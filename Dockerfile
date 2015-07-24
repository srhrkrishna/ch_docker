FROM ubuntu:14.04

MAINTAINER Krishna <sreeharikrishna.a@cognizant.com>

ENTRYPOINT ["/bin/bash"]

USER root

RUN useradd ubuntu

ADD chpoc.sh /tmp/
ADD start_services.sh /tmp/

RUN chmod 774 /tmp/chpoc.sh
RUN chmod 774 /tmp/start_services.sh

# Running the script with /bin/bash explicitly as by default 
# it tries to run with /bin/sh and fails.
RUN ["/bin/bash", "-c", "/tmp/chpoc.sh"]

LABEL version="1.0.0" application.name="Connected Home" description="Connected Home Cloud application."

EXPOSE 80 443

ENTRYPOINT [ "/bin/bash" ]
CMD [ "-c", "/tmp/start_services.sh" ]