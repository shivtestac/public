FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get  install -y software-properties-common

WORKDIR /var/www/html
RUN rm -rf index.html
RUN echo "server one " > index.html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN /etc/init.d/apache2 start 
VOLUME abc /var/www
CMD ["apache2ctl", "-D", "FOREGROUND"]
