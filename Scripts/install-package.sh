#!/bin/bash

echo "Initialize package installer ..."

sudo apt update
sudo apt install $1 -y

echo "Package installed successfully."
