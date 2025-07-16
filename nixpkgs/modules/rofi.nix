{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;  # usa o rofi padrão com GTK (e drun)
    extraConfig = {
      modi = "drun";
      show-icons = true;
      terminal = "kitty"; # ou o terminal que você usa
    };
  };
}

