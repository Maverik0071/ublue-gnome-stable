FROM ghcr.io/wayblueorg/hyprland:latest

## Nvidia users use this instead
# FROM ghcr.io/ublue-os/base-nvidia:latest


## Install a Desktop
# Use `dnf5 group list` to see possible group packages to install, or choose them individually

# RUN dnf5 group install i3 

#kde-desktop kde-apps

## Install applications
# Anything in Fedora

# RUN dnf5 install vlc neovim git feh nitrogen volumeicon pasystray tlp ranger NetworkManager-dmenu

## Add COPRs
# RUN dnf copr enable (copr-author/name)
# RUN dnf5 install thing-from-copr

## Manage services
# systemctl enable docker.service
# systemctl enable tlp.service
