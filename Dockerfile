FROM jenkins:alpine
MAINTAINER DineshAlapati

ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300"