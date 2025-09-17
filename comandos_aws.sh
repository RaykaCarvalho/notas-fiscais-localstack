# Criar bucket S3
aws --endpoint-url=http://localhost:4566 s3 mb s3://notas-fiscais-upload

# Criar tabela DynamoDB
aws --endpoint-url=http://localhost:4566 dynamodb create-table \
  --table-name NotasFiscais \
  --attribute-definitions AttributeName=id,AttributeType=S \
  --key-schema AttributeName=id,KeyType=HASH \
  --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5