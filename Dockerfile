# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Nginx
RUN apt-get update && apt-get install -y nginx
RUN rm -rf index.nginx-debian.html 


# Set the working directory
WORKDIR /var/www/html

# Copy the content of your site to the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

