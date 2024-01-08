#!/bin/bash

echo "Consul is located at ${CONSUL_HTTP_ADDR}"

consul lock -timeout "1s" -verbose -name "app_one" apps/lock/one \
  consul kv put apps/one @app.json && sleep 20
consul kv delete apps/one