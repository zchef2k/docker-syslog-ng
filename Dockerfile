FROM centos:latest
LABEL maintainer="zd"

RUN dnf -y install epel-release && dnf -y update && dnf -y install syslog-ng

EXPOSE 514/tcp
EXPOSE 514/udp

HEALTHCHECK --interval=2m --timeout=3s --start-period=30s CMD /usr/sbin/syslog-ng-ctl stats || exit 1

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F"]