FROM debian:11.3-slim

ARG VERSION
ENV DOWNLOAD_URL="https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip"

WORKDIR /home
VOLUME ["/home/worlds"]

EXPOSE 19132/udp

COPY *.sh /home

RUN apt update && apt-get install -y \
  curl \
  unzip && \
  curl -o bedrock-server.zip -LO ${DOWNLOAD_URL} --output bedrock-server.zip && \
  unzip bedrock-server.zip && \
  rm bedrock-server.zip && \
  rm bedrock_server_symbols.debug && \
  echo "\n""emit-server-telemetry=true" >> server.properties 

ENTRYPOINT [ "/bin/bash", "-c", "sh bedrock-setup.sh" ]