FROM ghcr.io/ublue-os/bluefin:latest

## Nvidia users use this instead
# FROM ghcr.io/ublue-os/base-nvidia:latest


## Install a Desktop
# Use `dnf5 group list` to see possible group packages to install, or choose them individually

# RUN dnf5 group
dnf install vim neovim fastfetch

#kde-desktop kde-apps

## Install applications
# Anything in Fedora

# RUN dnf5 install 
vlc neovim git feh nitrogen volumeicon pasystray tlp ranger NetworkManager-dmenu

## Add COPRs
# RUN dnf copr enable (copr-author/name)
# RUN dnf5 install thing-from-copr

dnf copr enable erikreider/packages 
dnf install autotiling


## Manage services
systemctl enable docker.service
# systemctl enable tlp.service
