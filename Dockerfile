FROM nevuly/archlinux:base-devel
LABEL maintainer="onyxclover9931@gmail.com"

RUN pacman-key --init && pacman-key --populate \
    && pacman -Syyu --noconfirm \
    && pacman -Syy --noconfirm bc bison cpio curl flex gcc git jq openssh pahole python qemu-img rsync unzip wget xz zip \
    && pacman -Scc --noconfirm && rm -rf /var/cache/pacman/pkg/*
