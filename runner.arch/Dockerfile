FROM archlinux:base-devel

RUN pacman -Suy --noconfirm --needed \
    # download engines
    curl ca-certificates \
    # essential tools
    git unzip sudo \
    # toolchain
    gcc-fortran \
    # Any package that needs a display (e.g. Gtk.jl)
    xorg-server-xvfb \
    # clean-up
    && find /var/cache/pacman/ -type f -delete

RUN useradd --create-home --shell /bin/bash --groups wheel pkgeval && \
    echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN mkdir /storage /cache && \
    chown pkgeval /storage /cache

WORKDIR /home/pkgeval
USER pkgeval
