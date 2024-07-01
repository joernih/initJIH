#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -S yay --needed --noconfirm
sudo pacman -S --noconfirm --needed - < packages/pckfull.txt 2>/dev/null
yay         -S --noconfirm --needed - < packages/yayfull.txt 2>/dev/null

