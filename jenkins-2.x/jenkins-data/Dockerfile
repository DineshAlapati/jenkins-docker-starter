FROM alpine:3.6
MAINTAINER DineshAlapati

# addgroup and adduser documentation: http://www.unix.com/man-page/linux/8/adduser/
RUN addgroup -g 1000 jenkins && \
    adduser -h "/var/jenkins_home" -u 1000 -G jenkins -s /bin/bash -D jenkins && \
    mkdir -p /var/log/jenkins && \
    chown -R jenkins:jenkins /var/log/jenkins

COPY jenkinsexport.tar.gz /tmp/jenkinsexport.tar.gz
COPY jenkinsdefaultsecrets.tar.gz /tmp/jenkinsdefaultsecrets.tar.gz

RUN tar -xvf /tmp/jenkinsexport.tar.gz && \
    tar -xvf /tmp/jenkinsdefaultsecrets.tar.gz && \
    rm /tmp/jenkinsexport.tar.gz && \
    rm /tmp/jenkinsdefaultsecrets.tar.gz && \
    chown -R jenkins:jenkins /var/jenkins_home

VOLUME ["/var/log/jenkins", "/var/jenkins_home"]

USER jenkins

CMD ["echo", "Data container for Jenkins"]