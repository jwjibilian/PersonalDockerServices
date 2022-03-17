FROM ubuntu:latest

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y
RUN apt-get install ssh

RUN mkdir /usr/volume

CMD ["/bin/bash"]