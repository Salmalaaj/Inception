FROM debian:bullseye

RUN apt update && apt install -y mariadb-server
# The mariadb-server package includes the core components required 
# to run the MariaDB database server. These components handle tasks 
# such as data storage, retrieval, access control, and more.
# When you install mariadb-server, you're essentially installing the
# software that allows you to set up and run your own database server using MariaDB.

# Copy the script into the container
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh script.sh

RUN chmod +x script.sh

CMD ["tail",  "-f",  "/dev/null"]

