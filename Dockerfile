FROM ubuntu:24.04
WORKDIR /app
COPY target/release/grpc-kafka .
COPY config-test.json .
COPY config-online.json .
ENTRYPOINT ["tail", "-f", "/dev/null"]