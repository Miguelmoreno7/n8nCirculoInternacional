FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y curl unzip ca-certificates && \
    curl -L https://github.com/tectonic-typesetting/tectonic/releases/download/tectonic%402.15.0/tectonic-2.15.0-x86_64-unknown-linux-gnu.tar.gz -o tectonic.tar.gz && \
    tar -xvf tectonic.tar.gz && \
    mv tectonic* /usr/local/bin/tectonic && \
    chmod +x /usr/local/bin/tectonic && \
    rm tectonic.tar.gz

USER node
