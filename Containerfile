FROM ghcr.io/ublue-os/base-main:latest

## Nvidia users use this instead
# FROM ghcr.io/ublue-os/base-nvidia:latest


## Install a Desktop
# Use `dnf5 group list` to see possible group packages to install, or choose them individually

# RUN dnf5 group install kde-desktop kde-apps

## Install applications
# Anything in Fedora

RUN dnf5 install vlc vim neovim git curl wget i3 i3lock i3status python3-i3ipc rofi dmenu feh nitrogenfedora-release-i3 variety volumeicon pasystray network-mananger-applet NetworkManager tlp tlp-rdw ranger

## Add COPRs
# RUN dnf copr enable (copr-author/name)
# RUN dnf5 install thing-from-copr

## Manage services
systemctl enable docker.service
systemctl enable tlp.service
