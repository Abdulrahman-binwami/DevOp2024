# Use an official Nginx image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your static files (HTML, JS, CSS, etc.) into the container
COPY . /usr/share/nginx/html

# Expose the port the server will run on
EXPOSE 80
