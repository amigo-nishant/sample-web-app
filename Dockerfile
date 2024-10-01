# Use the official Apache HTTP Server image
FROM httpd:2.4

# Copy the HTML files to the Apache server directory
COPY ./html/ /usr/local/apache2/htdocs/

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache server (this is the default CMD in the base image)
CMD ["httpd-foreground"]
