# --- 1 ---
# First to start this application we need node to be installed
FROM node:19-alpine
# FROM: Build this image fromt he specified image.

# --- 3 ---
# We will copy all the files required to the docker container
COPY package.json /app/
COPY src /app/
# COPY <src> on our machine <dest> in the container

# --- 4 ---
# Before running the next command we need to go inside the directory
WORKDIR /app
# WORKDIR:
# Sets the working directory for all following commands
# Like changing into a directory: "cd ..."


# --- 2 ---
# Then we will need dependencies to be installed which will create 
# a node modules file: npm install ...
RUN npm install 
# RUN: Will execute any command in a shell inside the container environment.

# --- 5 ---
# We need to run this to start the application usind "node server.js"
# Since this is the last command to run the application, something that starts
# the process itself
# There is a special directory called "CMD"
CMD ["node", "server.js"]
# CMD:
# The instruction that is to be executed when a Docker container starts
# There can only be one "CMD" instruction in a Dockerfile



###########
# This is a docker file that creates an image for our node.js application 
# which we can start as a container

