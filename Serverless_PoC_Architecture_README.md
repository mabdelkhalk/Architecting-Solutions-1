
# Serverless Proof of Concept (PoC) Architecture

## Introduction

This project is a proof of concept (PoC) for a serverless environment using AWS services. The goal of this project is to handle requests using AWS services like **IAM**, **DynamoDB**, **SQS**, **Lambda**, **SNS**, and **API Gateway**.

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

---

## Usage:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/serverless-poc-architecture.git
   cd serverless-poc-architecture
   ```

2. **Deploy Resources**:
   You can deploy resources using the AWS CLI scripts to set up IAM, DynamoDB, SQS, Lambda, SNS, and API Gateway.

3. **Test API**:
   You can send POST requests to the `/order` endpoint of the API Gateway.

---

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

## License

This project is licensed under the [MIT License](LICENSE).

---

## Notes

- This project is a proof of concept and can be customized to suit your needs.
- For any questions or support, feel free to reach out via [email](mailto:you@example.com).
