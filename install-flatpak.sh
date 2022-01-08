#!/bin/bash

# flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# curl -O https://flathub.org/repo/flathub.flatpakrepo
# sudo flatpak remote-add --from flathub flathub.flatpakrepo

if flatpak info --user org.jamovi.jamovi 1>/dev/null 2>/dev/null ; then
    echo "jamovi already installed"
else
    echo "installing jamovi"
    flatpak install --user https://dl.flathub.org/build-repo/71609/org.jamovi.jamovi.flatpakref
    # flatpak install    --user -y flathub org.jamovi.jamovi
fi

flatpak install    --user -y flathub org.freedesktop.Platform//21.08
flatpak install    --user -y flathub org.freedesktop.Sdk//21.08
