FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

LABEL maintainer="soyel.alam@ucdconnect.ie"

RUN apt-get update && \
	apt-get -y install sudo zip awscli

RUN pip3 install --upgrade pip && \
    pip3 install pipenv

WORKDIR /usr/src/app

RUN useradd jenkins -d /usr/src/app && echo "jenkins:jenkins" | chpasswd

RUN chown -R jenkins:jenkins /usr/src/app
