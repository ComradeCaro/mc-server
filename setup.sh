#!/bin/bash
# This is made to provide quick deployment of my mc server config to other machines. This is only made to work on linux but may work on one of the BSDs if you manually build mcman and exclude the graalvm specific flags

# Asks for Sudo permissions
sudo -v || { echo "Failed to obtain required sudo permissions. Exiting"; exit 1; }

# Install mcman
echo "Installing mcman..."
{
    wget -q https://github.com/ParadigmMC/mcman/releases/latest/download/mcman &&
    sudo mv ./mcman /usr/bin/ &&
    sudo chmod +x /usr/bin/mcman &&
    echo "Successfully installed mcman"
} || {
    echo "Installation of mcman failed. Exiting"
    exit 1
}

# Asks if user want to install java through sdkman
echo "This script will use sdkman (Note: This needs curl) to install GraalVM java which is required for running the Minecraft server."
echo "If java is already installed or you wish to install it in another way please exit now."
read -p "Press enter to continue: "

# Download and install sdkman
curl -s "https://get.sdkman.io" | bash

# Source sdkman environment script
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Install java
sdk install java 22.0.2-graal

echo "Java installed successfully"
echo "Installation complete. You may now run 'mcman build' to build the minecraft server and 'bash start.sh' (Note: requires tmux) or 'bash run.sh' to run it"
