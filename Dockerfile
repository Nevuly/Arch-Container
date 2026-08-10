FROM nevuly/archlinux:base-devel
LABEL maintainer="onyxclover9931@gmail.com"

RUN pacman-key --init && pacman-key --populate && update-ca-trust \
    && pacman -Syyu --noconfirm \
    && pacman -Syy --noconfirm asciidoc bc bison cpio curl flex gcc git jq libdwarf libelf openssh pahole python qemu-img rsync unzip wget xmlto xz zip 7zip \
    && pacman -Scc --noconfirm && rm -rf /var/cache/pacman/pkg/*
