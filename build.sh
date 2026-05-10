#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y alacritty distrobox dmenu dms dms-greeter dunst fastfetch flamshot 
fzf gh git grimshot hyprland hyprland-guiutils hyprland-protocols-devel hyprpaper hyprshot 
jetbrains-mono-fonts-all libdisplay-info-devel lm_sensors lsd maki neovim NetworkManager-tui
picom quickshell rofi swww vim wapaper zsh

# this would install a package from rpmfusion
# rpm-ostree install vlc

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
