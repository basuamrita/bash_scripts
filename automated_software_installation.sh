#!/usr/bin/env bash

# Set the list of software packages to install
PACKAGES="apache2"

# Install the packages
for package in ${PACKAGES[@]}; do
  sudo apt-get install $package -y
done