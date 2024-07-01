#!/bin/bash
# Script to switch to personal SSH key

# Define the .ssh directory
SSH_DIR=~/.ssh

# Check if the personal key files exist and copy them
if [[ -f "$SSH_DIR/personal_rsa" && -f "$SSH_DIR/personal_rsa.pub" ]]; then
    cp "$SSH_DIR/personal_rsa" "$SSH_DIR/id_rsa"
    cp "$SSH_DIR/personal_rsa.pub" "$SSH_DIR/id_rsa.pub"
    chmod 600 "$SSH_DIR/id_rsa"
    chmod 644 "$SSH_DIR/id_rsa.pub"
    echo "Switched to personal SSH key."
else
    echo "Personal SSH key files not found."
fi
