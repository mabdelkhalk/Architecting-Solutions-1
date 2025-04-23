
aws dynamodb create-table   --table-name orders   --attribute-definitions AttributeName=orderId,AttributeType=S   --key-schema AttributeName=orderId,KeyType=HASH   --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
