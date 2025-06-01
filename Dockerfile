# Use the official Nginx image as the base
FROM nginx:alpine

# Copy static HTML files into the Nginx html directory
COPY html/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80
