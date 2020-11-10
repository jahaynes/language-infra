FROM debian:9

WORKDIR /root

RUN apt-get update && \
    apt-get dist-upgrade -y

RUN apt-get install -y wget \
                       xz-utils \
		       gcc \
		       make \
		       libgmp-dev

RUN wget https://downloads.haskell.org/ghc/9.0.1-alpha1/ghc-9.0.0.20200925-x86_64-deb9-linux.tar.xz

RUN tar -xvf ./ghc-9.0.0.20200925-x86_64-deb9-linux.tar.xz

RUN cd ghc-9.0.0.20200925 \
 && ./configure           \
 && make install

COPY main.hs main.hs

CMD ghc -Wall -O3 -o ./main main.hs \
 && ./main
