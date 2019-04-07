#!/usr/bin/env bash
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down ['<Shift><Super>j']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up ['<Shift><Super>k']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down ['<Super>j']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up ['<Super>k']
gsettings set org.gnome.nautilus.desktop trash-icon-visible false
gsettings set org.gnome.shell.app-switcher current-workspace-only true
