FROM mysql:latest

# Add a database
ENV MYSQL_DATABASE your-data-base-name


# Add the content of the tables/ directory to the image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY tables/* /docker-entrypoint-initdb.d/