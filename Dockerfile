FROM jenkins:latest
MAINTAINER DineshAlapati

# Create Jenkins Log Folder
USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins

# Set default options
#ENV LANG en_US.UTF-8
ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"
