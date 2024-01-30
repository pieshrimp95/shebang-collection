#! /bin/sh
# Update.sh is an interactive clean update formed in Debian 12 Bookworm
# ======= Variables Section =======
# EMPTY (Fill this with variable)
# ======= First Section =======
echo "Welcome to Debian 12 Bookworm Interactive Updater"
echo "Updater will automatically detects and updates any package wihout confirmation with auto-removal for unused packages"
read -r -p "Are you sure you want to continue? Theres no way back after this. (y/n): " answer
# ======= Second Section =======
if [ "$answer" = "y" ]; then
    echo "Starting..."
        # Update Code goes here
        sudo apt update >> log.txt
        sudo apt upgrade >> log.txt
        sudo apt autoremove >> log.txt
        sudo apt-get purge >> log.txt
        sudo apt apt-get clean >> log.txt
        sudo apt-get autoclean >> log.txt
        # Aftermath 
        echo "Update has finished and ready-to-go"
        read -r -p "Would you read the logs? (y/n): " aftermath
 else
    echo "Answer not valid, Aborting..."
    echo "Press Enter to Close"
    read dummy
fi

if [ "$aftermath" = "y" ]; then
    open log.txt
    echo "Aborting..."
    echo "Press Enter to close..."
    read dummy
fi

# Finished reading the code? Don't forget to rate and feedback me on github!
# Link to github: 
# Made by (USER), Scripts reserved to the author.
# END OF THE CODE
