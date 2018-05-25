FROM ubuntu:16.04
MAINTAINER Jeganathan Swaminathan <jegan@tektutor.org>

#Install python and ssh server
RUN apt-get update && apt-get install -y python-minimal && apt-get install -y openssh-server 

#Create ssh key folder
RUN mkdir -p /root/.ssh

RUN mkdir -p /var/run/sshd

#Create ssh folder for config files
RUN mkdir -p /etc/ssh

COPY sshd_config /etc/ssh/sshd_config

#Change the root user password to root
RUN echo 'root:root' | chpasswd

#Copy the public key of localhost inside container
COPY authorized_keys /root/.ssh/authorized_keys

#Make sure ssh port and http ports are opened in the image level
EXPOSE 22
EXPOSE 80

#Configure ssh server as the container start-up application
CMD ["/usr/sbin/sshd", "-D"]
