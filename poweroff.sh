#!/bin/bash

# Read hosts into an array from the file
readarray -t hosts < poweroffhosts.txt

# SSH key file (replace with your actual private key file)
#private_key="/path/to/your/private/key"

# SSH user (replace with your actual SSH username)
#ssh_user="root"

# Iterate over the hosts
for host in "${hosts[@]}"; do
    echo "Powering off $host..."

    # Use SSH to execute the poweroff command on the remote host
    ssh $host "poweroff"

    # Check the exit status directly in the if statement
    if [ $? -eq 0 ]; then
        echo "Successfully powered off $host."
    else
        echo "Failed to power off $host."
    fi
done
