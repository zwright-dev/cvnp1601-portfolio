#!/bin/bash

##################################################################

# Script Name: server-setup.sh

# Purpose: Automate the installation, enabling, and confirmation of Nginx.

# Author: Zain Wright

# Date: September 26th, 2026

# Usage: ./server-setup.sh

##################################################################

echo "Starting server setup..."

# Fetch the latest package lists from the repositories to ensure install of the newest versions
echo "Updating package repositories..."
sudo apt update

# Install Nginx. The '-y' flag automatically answers 'yes' to prompts for us, allowing unattended installation
echo "Installing Nginx web server..."
sudo apt install -y nginx

# Enable Nginx to start on boot and '--now' starts the service immediately so we don't have to run a separate start command along with this one.
echo "Starting and enabling Nginx service..."
sudo systemctl enable --now nginx

# Verification block
echo "Verifying Nginx status..."
if systemctl is-active --quiet nginx; then
    echo "SUCCESS: Nginx is up and running successfully!"
else
    echo "ERROR: Nginx failed to start or is not running properly."
    exit 1
fi

echo "Server setup completed successfully."
