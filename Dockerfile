FROM ubuntu:trusty

MAINTAINER Eduardo Colabardini <eduardo.colabardini@gmail.com>

RUN apt-get update && apt-get -y upgrade && apt-get -y install wget

RUN cd /tmp; \
    wget http://www.java.net/download/java/jdk9/archive/125/binaries/jdk-9-ea+125_linux-x64_bin.tar.gz && \
    tar xfz jdk-9-ea+125_linux-x64_bin.tar.gz

ENV PATH /tmp/jdk-9/bin:$PATH

