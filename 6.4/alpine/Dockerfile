FROM alpine:3.12
MAINTAINER IF Fulcrum "fulcrum@ifsight.net"

ENV BUILDDATE 202107200804

COPY version-current.sh /version-current.sh
COPY version-updated.sh /version-updated.sh

RUN apk update && apk upgrade && \
    apk --no-cache add varnish

ENTRYPOINT ["/usr/sbin/varnishd"]

CMD ["-F","-P","/run/varnish.pid","-a",":80,PROXY","-f","/etc/varnish/default.vcl","-S","/etc/varnish/secret","-T","0.0.0.0:6082","-t","120","-s","malloc,128M","-p","feature=+http2"]
