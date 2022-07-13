FROM rabbitmq:3

ARG USER
ARG PASS
ARG PORT

RUN echo "default_user = $USER\ndefault_pass = $PASS\nloopback_users = none\nlisteners.tcp.default = $PORT" > /etc/rabbitmq/rabbitmq.conf

RUN sed -i 's/"//g' /etc/rabbitmq/rabbitmq.conf