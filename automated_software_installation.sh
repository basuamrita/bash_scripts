#!/bin/bash

# Set the list of software packages to install
PACKAGES=(package1 package2 package3)

# Install the packages
for package in ${PACKAGES[@]}; do
  sudo apt-get install $package -y
done