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
    #adwaita-icon-theme
    oh-my-zsh
    grim
    htop
    yazi
    neovim
  ];
}


