
# designing-a-serverless-web-backend-on-aws

## Introduction

This project is designing a serverless-web-backend on aws environment using AWS services. The goal of this project is to handle requests using AWS services like **IAM**, **DynamoDB**, **SQS**, **Lambda**, **SNS**, and **API Gateway**.

### Services Used:
- **IAM**: For managing permissions and access control.
- **DynamoDB**: NoSQL database to store orders.
- **SQS**: Queue service for message waiting.
- **Lambda**: Function to process data.
- **SNS**: For sending notifications.
- **API Gateway**: To create an API for receiving requests.

---

## How It Works:

### 1. **IAM Role and Policies**:
- An IAM policy is created to allow Lambda to access DynamoDB and SQS.

### 2. **Create DynamoDB Table**:
- A table is created to store orders with `orderId` as the primary key.

### 3. **Create SQS Queue**:
- An SQS queue is created to hold messages waiting to be processed by Lambda.

### 4. **Lambda Function**:
- The Lambda function processes incoming data and sends it to the SQS queue.

### 5. **Enable DynamoDB Streams**:
- DynamoDB Streams is enabled to track changes in the DynamoDB table.

### 6. **Create SNS Topic**:
- An SNS topic is set up to send notifications when a new order is added.

### 7. **API Gateway**:
- API Gateway is set up to receive POST requests and pass them to Lambda for processing.



## Project Structure:

```
├── IAM
│   ├── assume-role-policy.json
│   └── lambda-dynamodb-policy.json
├── Lambda
│   └── index.js
├── Scripts
│   ├── create-dynamodb-table.sh
│   ├── create-sqs-queue.sh
│   └── deploy-lambda.sh
├── README.md
└── architecture-diagram.png
```

---

