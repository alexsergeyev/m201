FROM       ubuntu:latest
MAINTAINER Alex Sergeyev  <a.sergeyev@netronixgroup.com>
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
RUN echo "deb http://repo.mongodb.com/apt/ubuntu $(cat /etc/lsb-release | grep DISTRIB_CODENAME | cut -d= -f2)/mongodb-enterprise/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-enterprise.list
RUN apt-get update && apt-get install -y curl unzip mongodb-enterprise

RUN mkdir -p /data/db /data/configdb \
  && chown -R mongodb:mongodb /data/db /data/configdb
RUN mv /etc/mongod.conf /etc/mongod.conf.orig
RUN mkdir -p /data/db /data/configdb /data/seed
VOLUME /data/seed
