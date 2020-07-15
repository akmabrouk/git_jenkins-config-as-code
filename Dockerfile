#this is the base image we use to create our image from
FROM jenkins/jenkins:lts
#just info about who created this
MAINTAINER Abdel "aek.mabrouk@gmail.com"
#create a volume in host
#VOLUME /jenkins-data2
#get rid of admin password setup
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
#automatically installing all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
