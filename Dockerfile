FROM ubuntu:latest

ARG ROOT_PASSWORD

WORKDIR /
RUN sed -i.bak -r 's!http://(jp\.)?archive\.ubuntu\.com/ubuntu/?!http://ftp.udx.icscoe.jp/Linux/ubuntu/!g' /etc/apt/sources.list
RUN apt update && apt upgrade -y

#UTILITY SETUP
RUN apt install nano aria2 net-tools rsyslog -y

#WEBMIN SETUP
RUN aria2c -x10 -k1M https://github.com/webmin/webmin/releases/download/2.021/webmin_2.021_all.deb && \
    ls && \
    apt-get install ./webmin_2.021_all.deb -y
RUN apt install cron -y
RUN chmod -R 777 /etc/webmin

#APACHE SETUP
RUN apt install apache2 -y

#BOOT SETTING
RUN echo root:${ROOT_PASSWORD} | chpasswd
EXPOSE 10000 443 80
CMD ["sh","/usr/local/lib/startup/startup.sh"]
