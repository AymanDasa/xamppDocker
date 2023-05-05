# xampp windows only
This is a docker-compose.yml file that defines three services: phpenv, mariadb, and phpmyadmin.

# Getting started

To get started, make sure you have Docker and Docker Compose installed on your machine. Then, follow these steps:

1. Clone this repository to your local machine.
2. Open a terminal and navigate to the root of the cloned repository.
3. Run the following command:
```bash
docker-compose up -d
```

4. Wait for the containers to start up.
5. For testing only **DON'T** use it for production. 
copy index.php file to C:\project\webhost\php\html

6. Access your application at http://localhost:8000.
7. Access phpMyAdmin at http://localhost:8080.

# Services
## apache

This service uses the official php 8.0.28-apache image and sets the working directory to C:\project\webhost\php\html. 
- It also maps the local C:\project\webhost\php\html  directory to /var/www/html inside the container.


## db

This service uses the official MariaDB image and sets the root password to "password". 
- It also creates a database called mydata, and a user called admin with the password "password". 
- This service maps port 9906 to 3306 and is part of the dev-env network.


## phpmyadmin

This service uses the official phpMyAdmin image. 
- It also depends on the mariadb service and maps port 8080 to port 80. 
 
