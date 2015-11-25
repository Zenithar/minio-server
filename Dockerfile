FROM alpine:latest
MAINTAINER Thibault NORMAND <me@zenithar.org>

ADD https://dl.minio.io:9000/updates/minio/2015/Nov/linux-amd64/minio minio

ENTRYPOINT  ["minio"]
VOLUME      ["/data"]
EXPOSE      9000
CMD         ["server /data"]
