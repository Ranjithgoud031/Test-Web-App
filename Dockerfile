#pulling a base image 
FROM ubuntu 
#Setting up workdir want to copy everything inside the container 
WORKDIR /app
#Update your OS when you install webserver 
RUN apt-get update -you
#To install apache2 web server
RUN apt-get install apache2 -y
#copy the code from local to inside the docker image
COPY . /var/www/html
#start Apache start server
ENTRYPOINT apachectl -D FOREGROUND

