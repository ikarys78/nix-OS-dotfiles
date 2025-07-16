{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget 
    curl 
    git 
    unzip 
    tree
    neofetch
    firefox
    killall
    oh-my-zsh
    grim
    htop
    yazi
    neovim
    rofi-wayland
    wofi
    fastfetch
    xfce.thunar
    btop
    vscodium
    prismlauncher
    python3
    gcc
    jetbrains.pycharm-community-bin
    cava
    cmatrix
    peaclock
    uwsm
    tmux
    discord
    pipewire
    slurp
    swappy
    # para a contrução do lfs:
  
    #gnumake
    #bash
    #binutils
    #bison
    #gawk
    #texinfo
    #flex
    #patch
    #unzip
    #gnutar
    #xz
    #zstd
    #bzip2
    #perl
    #file
    #wget
    #curl
    #rsync
    #coreutils
    #findutils
    #gnugrep
    #gnused
    #diffutils
    #util-linux
  ];
}


