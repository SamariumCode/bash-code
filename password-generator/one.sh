#!/bin/bash


# Password Generator

password_length=$1

tr -dc "a-zA-Z0-9" < /dev/urandom | head -c ${password_length}

echo



# Check if a password length is provided
if [[ -z "$1" ]]; then
    echo "Usage: $0 <password_length> [include_special_chars]"
    echo "Example: $0 16 yes"
    exit 1
fi

password_length=$1
include_special_chars=$2

# Validate that the password length is a number
if ! [[ "$password_length" =~ ^[0-9]+$ ]]; then
    echo "Error: Password length must be a number."
    exit 1
fi

# Character set based on user choice
if [[ "$include_special_chars" == "yes" ]]; then
    charset='a-zA-Z0-9!@#$%^&*()_+{}|:<>?'
else
    charset='a-zA-Z0-9'
fi

# Generate the random password
password=$(tr -dc "$charset" < /dev/urandom | head -c "$password_length")

# Display the generated password
echo "Generated Password: $password"
