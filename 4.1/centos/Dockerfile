FROM fulcrum/centos
MAINTAINER IF Fulcrum "fulcrum@ifsight.net"

RUN echo "Cache bust 201604291406" && \
    rpm --rebuilddb && \
    yum --noplugins install -y epel-release && \
    yum --noplugins upgrade -y && \
    rpm --nosignature -i https://repo.varnish-cache.org/redhat/varnish-4.1.el7.rpm && \
    yum install -y varnish && \
    package-cleanup --dupes && \
    package-cleanup --cleandupes && \
    yum clean all

ENTRYPOINT ["/usr/sbin/varnishd"]
CMD ["-F","-P","/var/run/varnish.pid","-a",":80","-f","/etc/varnish/default.vcl","-S","/etc/varnish/secret","-T","0.0.0.0:6082","-t","120","-s","malloc,128M"]
