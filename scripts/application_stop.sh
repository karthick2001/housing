#!/bin/bash

echo "This script stops running Docker containers, removes them, and deletes Docker images."

sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi $(sudo docker images -q)