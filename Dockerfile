FROM php:8.0-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get update -y
COPY ./www/ /var/www/html/
FROM mysql:5.7
ADD ./my-sql-backup/CT519_Table_645162010024.sql /docker-entrypoint-initdb.d
ADD ./my-sql-backup/my_data_645162010024.sql /docker-entrypoint-initdb.d:
