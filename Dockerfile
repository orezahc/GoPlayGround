FROM ubuntu:16.04

# OS Packages
RUN apt-get update && apt-get install -y\
    apt-transport-https \
    wget

RUN wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz \
    && tar -xvf go1.12.6.linux-amd64.tar.gz \
    && mv go /usr/local \
    && rm -rf go1.12.6.linux-amd64.tar.gz

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV GOROOT=/usr/local/go
ENV GOPATH=$HOME/Projects/Proj
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH

ENTRYPOINT ["/bin/bash"]
