#! /bin/sh
# Update.sh is an interactive clean update formed in Debian 12 Bookworm
# ======= First Section =======
echo "Welcome to \033[1mDebian 12 Bookworm Interactive Updater\033[0m"
echo "Updater will automatically detects and updates any package wihout confirmation with auto-removal for unused packages"
read -r -p "Are you sure you want to continue? Theres no way back after this. (y/n): " answer
# ======= Second Section =======
if [ "$answer" = "y" ]; then
    echo "Starting..."
        # Update Code goes here
        sudo apt-get update |tee logs.txt
        sudo apt-get upgrade |tee logs.txt
        sudo apt-get autoremove | tee logs.txt
        sudo apt-get purge | tee logs.txt
        sudo apt-get clean | tee logs.txt
        sudo apt-get autoclean | tee logs.txt
        # Aftermath 
        echo "Update has finished and ready-to-go"
        read -r -p "Would you read the logs? (y/n): " aftermath
 else
    echo "Press Enter to Close"
    read dummy
    exit 1
fi

# ======= Aftermath Section =======
if [ "$aftermath" = "y" ]; then
    open logs.txt
    echo "Text editor has closed."
    echo "Press Enter to close"
    read dummy
    exit 0
 else
    echo "Press Enter to close"
    read dummy
    exit 1
fi

# Finished reading the code? Don't forget to rate and feedback me on github!
# Link to github: https://github.com/wheatprune98/shscripts/
# Made by wheatprune98, Scripts licensed with GNU General Public License 3.0 (see LICENSE)
# END OF THE CODE
