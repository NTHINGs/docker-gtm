FROM ubuntu:latest

# Install git and wget
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common && \
    apt-get install -y git wget

# Install gtm
RUN wget https://github.com/git-time-metric/gtm/releases/download/v1.2.11/gtm.v1.2.11.linux.tar.gz && \
    tar -zxvf gtm*.tar -C /usr/bin && \
    ls && \
    gtm