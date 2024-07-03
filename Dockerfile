FROM archlinux/archlinux:base-devel
LABEL maintainer="onyxclover9931@gmail.com"

RUN pacman -Syy --noconfirm archlinux-keyring \
    && pacman-key --init && pacman-key --populate \
    && pacman -Syyu --noconfirm \
    && pacman -Syy --noconfirm aarch64-linux-gnu-gcc bc bison cpio curl flex gcc git pahole python rsync unzip wget xz zip \
    && pacman -Scc --noconfirm && rm -rf /var/cache/pacman/pkg/*
