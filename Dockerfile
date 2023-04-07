FROM php:7.4-apache
WORKDIR /var/www/html
RUN apt-get update && apt upgrade -y libmariadb-dev 
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli  
RUN echo '<?php phpinfo(); ' >> /var/www/html/index.php
