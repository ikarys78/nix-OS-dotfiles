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
    rofi
    wofi
    fastfetch
  ];
}


