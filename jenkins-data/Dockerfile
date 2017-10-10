FROM alpine:latest
MAINTAINER DineshAlapati

# addgroup and adduser documentation: http://www.unix.com/man-page/linux/8/adduser/
RUN addgroup -g 1000 jenkins \
    && adduser -h "/var/jenkins_home" -u 1000 -G jenkins -s /bin/bash -D jenkins \
    && mkdir -p /var/log/jenkins \
    && chown -R jenkins:jenkins /var/log/jenkins

VOLUME ["/var/log/jenkins", "/var/jenkins_home"]

USER jenkins

CMD ["echo", "Data container for Jenkins"]