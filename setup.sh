#!/bin/sh

linkNerd="https://github.com/ruxir-ig/nitch/releases/download/v0.2.3/nitch"
linkNoNerd="https://github.com/ruxir-ig/nitch/releases/download/v0.2.3/nitchNoNerd"

sudo rm -fv /usr/local/bin/nitch

echo ""

read -p "Use nerd font symbols? (y/n): " symbolsYN
echo "Installation..."

case $symbolsYN in
  "y")
    wget $linkNerd
    chmod +x nitchNerd
    sudo mv nitchNerd /usr/local/bin/nitch
  ;;

  "n")
    wget $linkNoNerd
    chmod +x nitchNoNerd
    sudo mv nitchNoNerd /usr/local/bin/nitch
  ;;
esac

echo ""
