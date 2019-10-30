#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root, IE: sudo make install-leader"
  return 1
fi

#TODO

echo "Installation complete. Please reboot now for changes to take effect."