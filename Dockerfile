FROM alpine:3.14

LABEL CREATOR Julien Delange <julien@code-inspector.com>
LABEL MAINTAINER Julien Delange <julien@code-inspector.com>

RUN apk add py3-pip --no-cache
RUN pip3 install code-inspector --no-cache-dir

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]