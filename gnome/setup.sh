#!/usr/bin/env bash

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down \
  '["<Shift><Super>j"]'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up \
  '["<Shift><Super>k"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down \
  '["<Super>j"]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up \
  '["<Super>k"]'
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
