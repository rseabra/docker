#!/bin/sh

read -p "Please type your project root: " ROOT

cat <<EOF > blog/.env
ROOT=$ROOT
EOF
