FROM rgielen/jenkins-training:latest

############################################
# Configure Jenkins
############################################
# Jenkins settings
COPY config/config.xml /usr/share/jenkins/ref/config.xml

# Jenkins Settings, i.e. Maven, Groovy, ...
COPY config/hudson.plugins.groovy.Groovy.xml /usr/share/jenkins/ref/hudson.plugins.groovy.Groovy.xml
COPY config/org.jenkinsci.plugins.configfiles.GlobalConfigFiles.xml /usr/share/jenkins/ref/org.jenkinsci.plugins.configfiles.GlobalConfigFiles.xml

# SSH Keys & Credentials
COPY config/credentials.xml /usr/share/jenkins/ref/credentials.xml
COPY config/ssh-keys/cd-demo /usr/share/jenkins/ref/.ssh/id_rsa
COPY config/ssh-keys/cd-demo.pub /usr/share/jenkins/ref/.ssh/id_rsa.pub

# tell Jenkins that no banner prompt for pipeline plugins is needed
# see: https://github.com/jenkinsci/docker#preinstalling-plugins
# RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
