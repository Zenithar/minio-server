FROM sdurrheimer/alpine-glibc
MAINTAINER Thibault NORMAND <me@zenithar.org>

ADD https://dl.minio.io:9000/updates/minio/2015/Dec/linux-amd64/minio /usr/bin/minio

RUN chmod +x /usr/bin/minio \
    && addgroup minio \
    && adduser -s /bin/false -G minio -S -D minio

USER        minio
ENTRYPOINT  ["minio"]
VOLUME      ["/data"]
EXPOSE      9000
CMD         ["server","/data"]
