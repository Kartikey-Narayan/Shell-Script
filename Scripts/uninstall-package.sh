#!/bin/bash

echo "Initialize package uninstaller ..."

sudo apt remove $1 -y

echo "Package uninstalled successfully."
