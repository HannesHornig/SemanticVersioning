FROM jenkinsci/blueocean:latest

# Install Jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN cat /usr/share/jenkins/plugins.txt | /usr/local/bin/install-plugins.sh

# Copying configuration files into Jenkins 
# for examplte to disable Security for testpurpose

COPY config.xml /var/jenkins_home

# Copying the jobs
COPY multijob/multibranchPipeline /usr/share/jenkins/ref/jobs/multibranchPipeline

# Skip inital Setup 
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

USER root

RUN apk add maven

USER jenkins 
