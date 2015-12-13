#! /bin/sh
chown -R minio:minio /data
/usr/bin/gosu minio /usr/bin/minio $@
