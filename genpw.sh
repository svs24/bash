#!/bin/bash

# Length of the password
LENGTH=12

# Generate a random password
PASSWORD=$(< /dev/urandom tr -dc 'A-Za-z0-9' | head -c$LENGTH)

# Output the password
echo "Generated Password: $PASSWORD"
