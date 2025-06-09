#!/bin/bash

# Updates all installed packages to their latest available versions
sudo yum update -y

# Installs the Apache HTTP server (httpd package)
sudo yum install -y httpd

# Starts the Apache HTTP server immediately
sudo systemctl start httpd

# Enables the Apache HTTP server to start automatically at system boot
sudo systemctl enable httpd

# Writes a simple HTML message with the system's fully qualified hostname into the default web page
echo "<h1>This message from : $(hostname -f)</h1>" | sudo tee /var/www/html/index.html
