FROM debian:jessie

ENV S3FS_VERSION=1.80 S3FS_SHA1=89483654c313c96b988b8c2a350024e73300506b

ADD *.sh /

RUN /build-s3fs.sh

ENTRYPOINT ["/entry.sh"]
