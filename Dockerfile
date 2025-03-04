# Use official NGINX image
FROM nginx:latest

# Remove default nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy static website files to NGINX HTML directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
