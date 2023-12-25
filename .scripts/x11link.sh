#!/bin/bash

# Remove the /tmp/.X11-unix directory
sudo rm -r /tmp/.X11-unix

# Create a symbolic link to /mnt/wslg/.X11-unix in /tmp
ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix

# to run these commands add this script to .zshrc
# to fix no password request add line to /etc/sudoers : 
# alex ALL=(ALL) NOPASSWD: /usr/sbin/rm -r /tmp/.X11-unix, /usr/sbin/ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix
