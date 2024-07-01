#!/bin/bash
# Script to switch to work SSH key

# Define the .ssh directory
SSH_DIR=~/.ssh

# Check if the work key files exist and copy them
if [[ -f "$SSH_DIR/work_rsa" && -f "$SSH_DIR/work_rsa.pub" ]]; then
    cp "$SSH_DIR/work_rsa" "$SSH_DIR/id_rsa"
    cp "$SSH_DIR/work_rsa.pub" "$SSH_DIR/id_rsa.pub"
    chmod 600 "$SSH_DIR/id_rsa"
    chmod 644 "$SSH_DIR/id_rsa.pub"
    echo "Switched to work SSH key."
else
    echo "Work SSH key files not found."
fi
