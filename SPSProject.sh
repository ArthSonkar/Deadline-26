#!/bin/bash

# FILE SECURITY AND PERMISSION MANAGER

TEAM NAME- DEADLINE 26

DIR="SecureFiles"


if [ ! -d "$DIR" ]; then
    mkdir "$DIR"
fi

while true
do
    echo "================================"
    echo "   FILE SECURITY MANAGER"
    echo "================================"
    echo "1. Create a new file"
    echo "================================"

    read -p "Enter your choice: " choice

    case $choice in

        1)
            read -p "Enter filename: " name

            if [ -z "$name" ] || [[ "$name" == */* ]] || [ "$name" = "." ] || [ "$name" = ".." ]; then
                echo "Invalid filename!"
            else
                if [ -e "$DIR/$name" ]; then
                    echo "File already exists!"
                else
                    touch "$DIR/$name"
                    echo "File created successfully!"
                fi
            fi
            ;;
    esac
    echo ""
done
