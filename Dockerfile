FROM jupyter/minimal-notebook:177037d09156

USER root


RUN wget https://dl.google.com/go/go1.12.3.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.12.3.linux-amd64.tar.gz
RUN export GOPATH=~/gocode
RUN export PATH=$PATH:/usr/local/go/bin$GOPATH/bin
RUN go get -d github.com/lightningnetwork/lnd
RUN cd $GOPATH/src/github.com/lightningnetwork/lnd
RUN make && make install

# Expose lnd ports (server, rpc).
EXPOSE 9735 10009

USER $NB_UID
