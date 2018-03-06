#!/bin/sh

# Ask setup questions
read -e -p "Please type your project root: " -i "$(pwd)/blog" ROOT

# Dump the .env file for docker-compose
cat <<EOF > blog/.env
ROOT=$ROOT
EOF

# Prepare the db and wordpress volumes
mkdir -p blog/files/db

cd blog/files

# Download (if needed) and unpack wordpress
if [ ! -e latest.tar.gz ]; then
	wget https://wordpress.org/latest.tar.gz
fi
tar xzvf latest.tar.gz
