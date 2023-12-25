#!/bin/bash

# Remove the /tmp/.X11-unix directory
sudo rm -r /tmp/.X11-unix

# Create a symbolic link to /mnt/wslg/.X11-unix in /tmp
ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix

# Check and print the current X server running, should be X0 socket
output=$(ls /tmp/.X11-unix)

# Compare the output with "X0"
if [[ "$output" == "X0" ]]; then
    echo "Success!"
else
    echo "Failed."
fi
