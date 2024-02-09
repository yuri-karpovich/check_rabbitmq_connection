# Check RabbitMQ connection

A fast method to verify RabbitMQ connection.

## Usage

```bash
docker run -e RABBITMQ_HOST='rabbit-host:5672' -e RABBITMQ_VHOST='/' -e RABBITMQ_PASS='rabbit_pass' -e  RABBITMQ_USER='rabbit_user' spoonest/check_rabbitmq_connection:latest
```

OR

```bash
docker run -e RABBITMQ_URL='amqp://rabbit_user:rabbit_pass_url_escaped@rabbit-host:5672' spoonest/check_rabbitmq_connection:latest
```