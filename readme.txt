# ---1---
docker build -t node-app:1.0 .

# -t or --tag : Sets a name and optionally a tag in the "name:tag" format
# We are saying build an image from with name <node-app> and tag <1.0> from definition
# of this docker file

# The dot (.) in the cmd represents the directory (current folder)

# ---2--- 
docker run -d -p 3000:3000 node-app:1.0