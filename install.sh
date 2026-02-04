#!/bin/bash

echo "Starting the MacOS-like setup for Linux Mint..."

# 1. Update the system 
echo "Updating system repositories..."
sudo apt update

# 2. Install essential tools (Neofetch, Git, Figlet)
echo "Installing essential tools..."
sudo apt install neofetch git figlet toilet -y

# 3. Create folders for themes and icons if they don't exist
echo "Creating theme and icon directories..."
mkdir -p ~/.themes
mkdir -p ~/.icons

# 4. Set up the terminal alias
echo "Setting up terminal aliases..."
if ! grep -q "alias mac-update" ~/.bashrc; then
     echo "alias mac-update='sudo apt update && sudo apt upgrade -y'" >> ~/.bashrc
     echo "Alias created! Use 'mac-update' to update your system. "
fi

echo "Setup complete! Please restart your terminal."
neofetch
