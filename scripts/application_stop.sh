#!/bin/bash

echo "This Script is used to stop already running Docker container, remove them, and remove the image as well."

# Stop all running containers if any exist
if [ "$(sudo docker ps -q)" ]; then
  echo "Stopping all running containers..."
  sudo docker stop $(sudo docker ps -q)
else
  echo "No running containers to stop."
fi

# Remove all stopped containers if any exist
if [ "$(sudo docker ps -aq)" ]; then
  echo "Removing all stopped containers..."
  sudo docker rm $(sudo docker ps -aq)
else
  echo "No containers to remove."
fi

# Remove all images if any exist
if [ "$(sudo docker images -q)" ]; then
  echo "Removing all Docker images..."
  sudo docker rmi $(sudo docker images -q)
else
  echo "No Docker images to remove."
fi
