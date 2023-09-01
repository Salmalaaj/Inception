FROM debian:bullseye
# The FORM instruction specifies the base image 
# which is the starting point for building my container
# Debian Bullseye operating system is the base image for this container
# We specify the container's name when we run it


RUN apt update && apt upgrade
# apt update: Refreshes the package repository information to ensure
# that the latest package details are available.
# apt upgrade: Upgrades installed packages to their latest versions,
# ensuring the container starts with up-to-date software.

RUN apt install nginx -y
# Installs the nginx web server inside the container
# -y flag is used to automatically answer yes to any prompts
# that appear during the installation process

COPY ssl_certificate.crt /etc/nginx/ssl/certif.crt
# COPY instruction copies the ssl_certificate.crt file from the
# srcs/requirements/nginx directory on the host machine to the
# /etc/nginx/ssl/certif.crt directory inside the container
# This action is used to include an SSL certificate file
# required for configuring HTTPS in the nginx web server within the container

COPY private.key /etc/nginx/ssl/private.key
# COPY instruction copies the private.key file from the
# srcs/requirements/nginx directory on the host machine to the
# /etc/nginx/ssl/private.key directory inside the container
# This action is used to include the private key that corresponds
# to the SSL certificate file required for configuring HTTPS in the
# nginx web server within the container

COPY conf/nginx.conf /etc/nginx/nginx.conf
# COPY instruction copies the nginx.conf file from the
# srcs/requirements/nginx directory on the host machine to the
# /etc/nginx/nginx.conf directory inside the container
# This action is used to replace or customize the default NGINX
# configuration file with my own configuration.

CMD ["nginx", "-g", "daemon off;"]
# CMD instruction specifies the command that is executed when the
# container is started
# In this case, the command is to start the nginx web server
# The -g flag is used to specify a configuration directive
# The daemon off; directive is used to prevent nginx from running
# in the background and instead run in the foreground


