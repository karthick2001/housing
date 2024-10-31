#!/bin/bash

echo "This script stops running Docker containers, removes them, and deletes Docker images."

# Stop running containers if any exist
if [ "$(sudo docker ps -q)" ]; then
    sudo docker stop $(sudo docker ps -q)
else
    echo "No running containers to stop."
fi

# Remove stopped containers if any exist
if [ "$(sudo docker ps -a -q)" ]; then
    sudo docker rm $(sudo docker ps -a -q)
else
    echo "No containers to remove."
fi

# Remove images if any exist
if [ "$(sudo docker images -q)" ]; then
    sudo docker rmi $(sudo docker images -q)
else
    echo "No images to remove."
fi
