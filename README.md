# Dockerfile:
## We are using the nginx:alpine image because it's lightweight and perfect for serving static content like HTML and JS.
## COPY . /usr/share/nginx/html: This line copies everything in your current directory (your project) to the Nginx container's web root directory (/usr/share/nginx/html).
## EXPOSE 80: This tells Docker that the container will listen on port 80.
# docker-compose.yml:
## We define a service named web that uses the image we will build from the Dockerfile.
The ports section maps port 80 on the container to port 8080 on the host machine.

# Command: docker-compose up --build
## docker-compose up: This command brings up the services defined in the docker-compose.yml file. It will start the containers and set up any necessary network connections.
## --build: This flag forces Docker Compose to rebuild the image based on the Dockerfile. This is useful if you've made changes to the Dockerfile or project files and need those changes to be reflected in the container.


<img width="243" alt="Screenshot 2024-10-06 at 2 25 13 PM" src="https://github.com/user-attachments/assets/7cd5fdd3-04a1-4e3f-a34b-99a53e9f78f5">


This line tells Docker to use the official Nginx image based on Alpine Linux as the base image for the container. The nginx:alpine image is a streamlined version of the Nginx web server, making it smaller and faster to download while still providing the essential Nginx functionality.
