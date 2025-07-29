FROM ubuntu:24.04
RUN apt-get update && apt-get install -y  \
        ca-certificates  \
        libsasl2-2 \
        netbase \
        iputils-ping \
        net-tools \
        curl \
        net-tools \
        && rm -rf /var/lib/apt/lists/ \
        && apt-get autoremove -y && apt-get autoclean -y
WORKDIR /app
COPY target/release/grpc-kafka .
COPY config-test.json .
COPY config-online.json .
ENTRYPOINT ["tail", "-f", "/dev/null"]