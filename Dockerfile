FROM golang:1.12-alpine as builder

MAINTAINER Olaoluwa Osuntokun <lightning.engineering>

# Force Go to use the cgo based DNS resolver. This is required to ensure DNS
# queries required to connect to linked containers succeed.
ENV GODEBUG netdns=cgo

# Install dependencies and install/build lnd.
RUN apk add --no-cache git make bash
RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -d github.com/lightningnetwork/lnd
RUN  cd /go/src/github.com/lightningnetwork/lnd &&  make &&  make install

# Start a new, final image to reduce size.
FROM jupyter/minimal-notebook:177037d09156 as final

# Expose lnd ports (server, rpc).
EXPOSE 9735 10009

# Copy the binaries and entrypoint from the builder image.
COPY --from=builder /go/bin/lncli /bin/
COPY --from=builder /go/bin/lnd /bin/
