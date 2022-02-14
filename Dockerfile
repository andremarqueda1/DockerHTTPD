FROM httpd:2.4
MAINTAINER andremarqueda1@gmail.com

ARG USER=andre
ARG UID=1000
ARG GID=1000
# default password for user
ARG PW=andre

ENV TZ=America/USA \
DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install tzdata


MAINTAINER andremarqueda1@gmail.com
RUN apt-get update
RUN apt-get install openssh-client -y 


COPY index.html /var/www/html/
COPY style/ /var/www/html/
COPY page.html /var/www/html 
COPY examples.html /var/www/html
COPY another_page.html /var/www/html
COPY contact.html /var/www/html
EXPOSE 80
