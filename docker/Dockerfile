FROM ubuntu:18.04

RUN sed -i.bak -e 's%http://[^ ]\+%mirror://mirrors.ubuntu.com/mirrors.txt%g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y cmake
RUN apt-get update && apt-get install -y g++
WORKDIR /project
ENTRYPOINT [ "bash" ]
