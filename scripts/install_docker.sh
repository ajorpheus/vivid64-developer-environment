#!/bin/bash

echo "Installing Docker..."
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
adduser vagrant docker
