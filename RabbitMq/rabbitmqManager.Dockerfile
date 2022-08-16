FROM rabbitmq:3.9.12-management-alpine

ENV RABBITMQ_USER local
ENV RABBITMQ_PASSWORD pass
ENV RABBITMQ_PID_FILE /var/lib/rabbitmq/mnesia/rabbitmq
ENV RABBITMQ_CONFIG_FILE $RABBITMQ_HOME/etc/rabbitmq/rabbitmq.conf

COPY rabbitmq.conf $RABBITMQ_HOME/etc/rabbitmq/rabbitmq.conf

ADD init.sh /init.sh 
RUN chmod +x /init.sh
EXPOSE 15672

CMD ["/init.sh"]