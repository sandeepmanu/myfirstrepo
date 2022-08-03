FROM ubuntu:20.04
#FROM jenkins/jenkins:lts
#USER root
RUN apt-get update

RUN apt-get install -y wget

RUN apt-get install -y unzip

#RUN apt-get update

#RUN apt-get install -y vim

#USER jenkins


RUN wget https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip \
    && unzip terraform_1.0.7_linux_amd64.zip \
    && mv terraform /usr/local/bin/

#RUN update-ca-certificates

ENTRYPOINT ["/usr/local/bin/terraform"]
