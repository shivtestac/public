# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y apache2

# Copy configuration files
COPY apache2.conf /etc/apache2/

CMD echo "hello shiv " > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache web server
CMD ["apachectl", "-D", "FOREGROUND"]
