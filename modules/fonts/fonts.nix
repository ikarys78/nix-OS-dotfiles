{ config, pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-emoji
      font-awesome
      pkgs.nerd-fonts.jetbrains-mono
      pkgs.nerd-fonts.fira-code
    
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetBrains Nerd Font"];
        sansSerif = [ "Noto Sans" ];
        serif = [ "Noto Serif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}

