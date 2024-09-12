# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the HTML file to the NGINX directory
COPY index.html /usr/share/nginx/html/index.html

COPY images /usr/share/nginx/html/images

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
