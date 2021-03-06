FROM rabbitmq:3.8.1-alpine

RUN apk update \
    && apk add --no-cache curl g++ make autoconf bash python

RUN rabbitmq-plugins enable rabbitmq_management

COPY ./rabbitmqadmin /usr/local/bin/rabbitmqadmin
RUN chmod +x /usr/local/bin/rabbitmqadmin