
aws sns create-topic --name orderTopic
aws sns subscribe   --topic-arn arn:aws:sns:<region>:<account-id>:orderTopic   --protocol email   --notification-endpoint you@example.com
