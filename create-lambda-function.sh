
aws lambda create-function   --function-name orderProcessor   --runtime nodejs20.x   --role arn:aws:iam::<account-id>:role/LambdaDynamoDBRole   --handler index.handler   --zip-file fileb://function.zip
