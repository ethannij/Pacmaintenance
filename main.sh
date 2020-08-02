#!/bin/bash
 #This script runs commands to clean up your system a little bit, and install updates, through pacman
 
#ensure packages and repositories are up to date
sudo pacman -Syyuu

#remove orphaned dependencies
sudo pacman -Rns "$(pacman -Qtdq)"

#Update one more time to make sure everything still works and has their requirements
sudo pacman -Syyuu
