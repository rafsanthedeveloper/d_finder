FROM php:8.1-apache

# Set ServerName to suppress Apache's warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY . /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]
