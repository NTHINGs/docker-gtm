FROM ubuntu:latest

# Install git and wget
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y git wget

# Set Timezone (Affects the reports)
RUN cd /usr/share/zoneinfo/America && ls
#RUN su cp /usr/share/zoneinfo/America /etc/localtime

# Install gtm
RUN wget https://github.com/git-time-metric/gtm/releases/download/v1.2.11/gtm.v1.2.11.linux.tar.gz && \
    tar -zxvf gtm.v1.2.11.linux.tar.gz -C /usr/bin && \
    gtm --version