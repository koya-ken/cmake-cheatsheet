FROM ubuntu:18.04

RUN sed -i.bak -e 's%http://[^ ]\+%mirror://mirrors.ubuntu.com/mirrors.txt%g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y clang
RUN apt-get update && \
    apt-get upgrade -y && \
	apt-get -y install git p7zip-full wget && \
	rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Kitware/CMake/releases/download/v3.19.2/cmake-3.19.2-Linux-x86_64.sh -O install.sh && \
    chmod +x install.sh && \
    ./install.sh --skip-license --prefix=/usr/local
RUN apt-get update && apt-get install -y make
WORKDIR /project
ENTRYPOINT [ "bash" ]
