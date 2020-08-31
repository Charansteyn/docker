FROM php:7.1.2-apache 

RUN docker-php-ext-install mysqli

RUN docker-php-ext-install pdo_mysql

EXPOSE 80

CMD echo "ServerName localhost" >> /etc/apache2/apache2.conf

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

RUN cd /var/www/html/

COPY . /var/www/html/


