# Use an official Nginx image as a parent image
FROM nginx:alpine

# Set the working directory to nginx asset directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy your static files from your project's root to the Nginx public folder
COPY . .

# Expose port 80 to the Docker host, so we can access it
# (this is often handled by the platform, but good practice)
EXPOSE 80

# Command to run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]