FROM ubuntu:latest

RUN apt-get update && \
    apt-get install --yes \
    curl \
    gnupg \
    lsb-release

RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && \
    chmod 700 get_helm.sh && \
    ./get_helm.sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh