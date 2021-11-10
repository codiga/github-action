FROM alpine:3.14

LABEL CREATOR Julien Delange <julien@codiga.io>
LABEL MAINTAINER Julien Delange <julien@codiga.io>

RUN apk add py3-pip --no-cache
RUN pip3 install codiga --no-cache-dir

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]