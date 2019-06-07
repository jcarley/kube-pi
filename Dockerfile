FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt update && \
    apt upgrade -y && \
    apt install software-properties-common -y && \
    apt-add-repository ppa:ansible/ansible -y && \
    apt update && \
    apt install sshpass ansible -y
