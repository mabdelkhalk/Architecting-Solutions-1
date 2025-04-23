
const AWS = require('aws-sdk');
const sqs = new AWS.SQS();

exports.handler = async (event) => {
  const order = JSON.parse(event.body);
  const params = {
    QueueUrl: process.env.QUEUE_URL,
    MessageBody: JSON.stringify(order)
  };
  await sqs.sendMessage(params).promise();
  return {
    statusCode: 200,
    body: JSON.stringify({ message: 'Order received' })
  };
};
