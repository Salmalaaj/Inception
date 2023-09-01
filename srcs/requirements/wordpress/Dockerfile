FROM debian:bullseye

RUN apt update && apt install -y php wget curl unzip php-fpm sudo php-mysqli php-common php-xml sendmail

RUN wget https://wordpress.org/latest.tar.gz
# Downloads the latest version of wordpress as a compressed archive
# ('latest.tar.gz') from the official wordpress website

RUN tar -xzvf latest.tar.gz
# Extracts the contents of the 'latest.tar.gz' archive using the 'tar'
# command. The options used are:
# -x: Extracts the contents of the archive
# -z: Decompresses the archive using gzip
# -v: Displays the progress of the extraction
# -f: Specifies the name of the archive file (the input file)
RUN chown -R www-data:www-data wordpress
# Changes the ownership of the 'wordpress' directory and its contents 
# to the 'www-data' user and group. This is a common practice for
# web server files to ensure that the web server process has the
# appropriate permissions to access and serve the files.
# This is necessary for wordpress to be able to write to its own files.


RUN mkdir -p /var/www/html/
# Creates the directory where wordpress will be installed
# The '-p' option creates any parent directories that do not exist
# This is a common location for web server document roots

RUN mv ./wordpress /var/www/html/
# Moves the extracted wordpress files to the document root
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

RUN mkdir -p /run/php

CMD ["php-fpm7.4", "-F"]