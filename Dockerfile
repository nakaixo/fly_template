from ghcr.io/gleam-lang/gleam:v0.28.3-erlang-alpine

copy . /opt/app/

workdir /opt/app/
run gleam export erlang-shipment \
  && mv ./build/erlang-shipment/ /opt/deploy/ \
  && rm -r /opt/app/

workdir /opt/deploy/
cmd ["/opt/deploy/entrypoint.sh", "run"]
