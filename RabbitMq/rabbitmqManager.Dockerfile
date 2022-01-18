FROM rabbitmq:3.9.12-management

ENV RABBITMQ_USER local
ENV RABBITMQ_PASSWORD pass
ENV RABBITMQ_PID_FILE /var/lib/rabbitmq/mnesia/rabbitmq

ADD init.sh /init.sh
RUN chmod +x /init.sh
EXPOSE 15672

CMD ["/init.sh"]