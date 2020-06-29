FROM jenkinsci/blueocean:latest

# Install Jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN cat /usr/share/jenkins/plugins.txt | /usr/local/bin/install-plugins.sh

# Copying configuration files into Jenkins 
# for examplte to disable Security for testpurpose

COPY config.xml /var/jenkins_home

# Copying the jobs
COPY servicemaster/config.xml /usr/share/jenkins/ref/jobs/servicemaster/config.xml
COPY servicestage/config.xml /usr/share/jenkins/ref/jobs/servicestage/config.xml
COPY multijob/config.xml /usr/share/jenkins/ref/jobs/multijob/config.xml

# Skip inital Setup 
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

USER jenkins 
