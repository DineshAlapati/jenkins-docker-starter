FROM jenkins/jenkins:2.84-alpine
MAINTAINER DineshAlapati

# Create Jenkins Log Folder
USER root
RUN mkdir /var/log/jenkins \
    && mkdir /var/cache/jenkins \
    && chown -R jenkins:jenkins /var/log/jenkins \
    && chown -R jenkins:jenkins /var/cache/jenkins

USER jenkins

# Setting number of executors
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# Set list of plugins to download / update in plugins.txt like this
# pluginID:version
# credentials:1.18
# maven-plugin:2.7.1
# ...
# NOTE : Just set pluginID to download latest version of plugin.
# NOTE : All plugins need to be listed as there is no transitive dependency resolution.
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/ref/plugins.txt

# Set default options
ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"
