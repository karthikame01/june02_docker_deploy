# Use the official Apache HTTP Server image
# Use the official httpd base image
FROM httpd:latest


# Copy custom HTML to the default web server directory
COPY ./index.html /usr/local/apache2/htdocs/index.html

# Expose port 80
EXPOSE 80

# Start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]
