FROM rabbitmq:3.7.8-management

ADD rabbitmq_delayed_message_exchange-20171201-3.7.x.ez $RABBITMQ_PLUGINS_DIR/plugins/rabbitmq_delayed_message_exchange.ez
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

COPY rabbitmq.conf /etc/rabbitmq/
