FROM php:8.1-apache

# Configure Apache to listen on port 80
RUN echo "Listen 80" >> /etc/apache2/ports.conf
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY . /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]
