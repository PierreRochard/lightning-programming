FROM jupyter/minimal-notebook:177037d09156

RUN wget https://github.com/lightningnetwork/lnd/releases/download/v0.6.1-beta/lnd-linux-amd64-v0.6.1-beta.tar.gz
RUN tar -C ~/ -xzf lnd-linux-amd64-v0.6.1-beta.tar.gz
RUN export PATH=$PATH:~/lnd-linux-amd64-v0.6.1-beta/
RUN pip install --no-cache-dir lnd-grpc


# Expose lnd ports (server, rpc).
EXPOSE 9735 10009

