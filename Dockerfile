FROM jupyter/minimal-notebook:177037d09156

USER $NB_UID

RUN wget https://dl.google.com/go/go1.12.3.linux-amd64.tar.gz
RUN tar -C ~/ -xzf go1.12.3.linux-amd64.tar.gz
RUN export GOPATH=~/gocode
RUN export PATH=$PATH:~/go/bin:$GOPATH/bin
RUN go get -d github.com/lightningnetwork/lnd
RUN cd $GOPATH/src/github.com/lightningnetwork/lnd
RUN make && make install

# Expose lnd ports (server, rpc).
EXPOSE 9735 10009

