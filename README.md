# xampp
This is a docker-compose.yml file that defines three services: phpenv, mariadb, and phpmyadmin.

# Getting started

To get started, make sure you have Docker and Docker Compose installed on your machine. Then, follow these steps:

1. Clone this repository to your local machine.
2. Open a terminal and navigate to the root of the cloned repository.
3. Run the following command:
```bash
docker-compose up --build -d
```

4. Wait for the containers to start up.
5. For testing only **DON'T** use it for production. 
run the following command:
```bash
chmod -R 777 app 
echo "<?php phpinfo();" > ./app/index.php
```

6. Access your application at http://localhost:8080.
7. Access phpMyAdmin at http://localhost:8089.

# Services
## phpenv

This service uses the official PHP 7.4 Apache image and sets the working directory to /var/www/html. 
It also maps the local ./app directory to /var/www/html inside the container, and the local ./config and ./config/apache2 directories to /usr/local/etc/php/ and /var/log/apache2 respectively. 
This service depends on the mariadb service and is part of the dev-env network.
## mariadb

This service uses the official MariaDB image and sets the root password to password. 
It also creates a database called school, and a user called admin with the password password. 
This service maps port 3360 to 3306 and is part of the dev-env network.
## phpmyadmin

This service uses the official phpMyAdmin image and sets the document root to /app. 
It also depends on the mariadb service and maps port 8089 to port 80. 
This service is part of the dev-env network.
## Volumes

This docker-compose.yml file defines a volume called mysqldata. 
This volume is not used in any of the services, but it can be used to persist data across container restarts.
## Networks

This docker-compose.yml file defines a network called dev-env. 
This network is used by all three services to communicate with each other.
