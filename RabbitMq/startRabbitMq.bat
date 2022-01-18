docker build -f rabbitmqManager.Dockerfile -t rabbit-mq-pubs .
docker run -p 15672:15672 -p 5672:5672 rabbit-mq-pubs