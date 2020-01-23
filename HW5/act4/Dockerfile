FROM linuxconfig/lemp
COPY armbook_packaged/ /var/www/html/
COPY MyCertificate.crt /var/www/html/
COPY MyKey.key /var/www/html/
COPY default /etc/nginx/sites-enabled/
RUN service mysql start && mysql -u admin -ppass -e "CREATE DATABASE IF NOT EXISTS armbook;" && mysql -u admin -ppass armbook < /var/www/html/armbook.sql
EXPOSE 80 
EXPOSE 443
