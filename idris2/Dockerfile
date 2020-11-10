FROM ubuntu:latest

ENV IDRIS_VER=0.2.1

WORKDIR /root

RUN apt-get update && \
    apt-get dist-upgrade -y

RUN apt-get install -y chezscheme \
                       wget \
                       gcc \
                       make 

RUN wget https://github.com/idris-lang/Idris2/archive/v${IDRIS_VER}.tar.gz

RUN tar -xf v${IDRIS_VER}.tar.gz

WORKDIR /root/Idris2-${IDRIS_VER}

RUN make bootstrap SCHEME=chezscheme

RUN make install

COPY main.idr main.idr

CMD ./build/exec/idris2 main.idr -Wall -O3 -o main \
 && ./build/exec/main
