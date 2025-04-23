
aws apigateway create-resource   --rest-api-id <api-id>   --parent-id <root-id>   --path-part order

aws apigateway put-method   --rest-api-id <api-id>   --resource-id <resource-id>   --http-method POST   --authorization-type NONE

aws apigateway put-integration   --rest-api-id <api-id>   --resource-id <resource-id>   --http-method POST   --type AWS_PROXY   --integration-http-method POST   --uri arn:aws:apigateway:<region>:lambda:path/2015-03-31/functions/arn:aws:lambda:<region>:<account-id>:function:orderProcessor/invocations
