FROM linuxconfig/lemp
COPY armbook/ /var/www/html/
COPY default /etc/nginx/sites-enabled/
COPY php.ini /etc/php/7.0/cli/
COPY php.ini /etc/php/7.0/cgi/
COPY php.ini /etc/php/7.0/fpm/
RUN service mysql start && mysql -u admin -ppass -e "CREATE DATABASE IF NOT EXISTS armbook;" && mysql -u admin -ppass armbook < /var/www/html/armbook.sql
EXPOSE 80
