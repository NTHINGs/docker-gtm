FROM ubuntu:latest

# Install git and wget
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y git wget tzdata  &&\
    apt-get clean

# Install gtm
RUN wget https://github.com/git-time-metric/gtm/releases/download/v1.2.11/gtm.v1.2.11.linux.tar.gz && \
    tar -zxvf gtm.v1.2.11.linux.tar.gz -C /usr/bin && \
    gtm --version