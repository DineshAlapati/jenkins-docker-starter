FROM jenkins:1.609.1
MAINTAINER DineshAlapati

# Create Jenkins Log Folder
USER root
RUN mkdir /var/log/jenkins \
    && mkdir /var/cache/jenkins \
    && chown -R jenkins:jenkins /var/log/jenkins \
    && chown -R jenkins:jenkins /var/cache/jenkins

USER jenkins

# Set default options
ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"
