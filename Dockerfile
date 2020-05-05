# Use an official Alpine Linux as a parent image
FROM alpine:latest

# Install or Update Apache
RUN apk --update add apache2 && apk --update add apache2-utils

# Copy httpd.conf the current directory contents into the container at /etc/apache2
COPY httpd.conf /etc/apache2

# Copy .htaccess the current directory contents into the container at /var/www/localhost/htdocs/
COPY .htaccess /var/www/localhost/htdocs/

# Make port 80 available to the world outside this container
EXPOSE 80

# Change "It Works!" on /var/www/localhost/htdocs/index.html
# AND
# Create .htpasswd on /var/www/localhost/htdocs/index.html
RUN sed -i  's/It works!/It works on Docker HTACCESS!/g' /var/www/localhost/htdocs/index.html &&  \
htpasswd -c -b /var/www/localhost/htdocs/.htpasswd sample test

# Run httpd service when the container launches
CMD ["httpd", "-D", "FOREGROUND"]