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


<img width="331" alt="Screenshot 2024-10-06 at 2 27 26 PM" src="https://github.com/user-attachments/assets/3b55ed12-8448-4e01-9509-f318ed8e7274">


This sets the working directory inside the container to /usr/share/nginx/html, which is the default directory where Nginx serves static files such as HTML, JavaScript, and CSS files. Any subsequent COPY or other file manipulation commands will be relative to this directory.


<img width="440" alt="Screenshot 2024-10-06 at 2 32 08 PM" src="https://github.com/user-attachments/assets/78224494-0a28-4270-901f-ada633ff96af">


This line copies all the files from the current directory on your local machine (i.e., where the Dockerfile is located) into the container's /usr/share/nginx/html directory. These files are typically your static website files like index.html, CSS stylesheets, and JavaScript files. After this command, these static assets are ready to be served by Nginx.


<img width="311" alt="Screenshot 2024-10-06 at 2 32 32 PM" src="https://github.com/user-attachments/assets/a068dca5-4b3c-4408-9667-1308bc8fb1a2">


This tells Docker that the container will listen on port 80 (the default HTTP port). While this doesn't actually open the port (that's done via Docker's networking configurations during container runtime), it signals that the application will be using port 80 to communicate, allowing external services or users to connect to the container on this port.


Summary:
This Dockerfile effectively creates a lightweight container that runs an Nginx server, serving static files from your local machine. You can use this container to host static websites or as a reverse proxy server.
