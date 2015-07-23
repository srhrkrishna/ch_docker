FROM ubuntu:14.04

MAINTAINER Krishna <sreeharikrishna.a@cognizant.com>

ENTRYPOINT ["/bin/bash"]

USER root

RUN useradd ubuntu

ADD chpoc.sh /tmp/

RUN ["/bin/bash", "-c", "/tmp/chpoc.sh"]

LABEL version="1.0.0" application.name="Connected Home" description="Connected Home Cloud application."

EXPOSE 80 443