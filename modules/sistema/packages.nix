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
    virtualbox
    proton-ge-custom
    steam
    lutris-free
    parted
    bison
    file
    wget
    gimp3
    nix-output-monitor
    
  ];
}


