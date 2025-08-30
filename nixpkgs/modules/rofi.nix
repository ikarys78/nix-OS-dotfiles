{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland-unwrapped;  # usa o rofi padrão com GTK (e drun)
    extraConfig = {
      modi = "drun,run,window";
      show-icons = true;
      terminal = "kitty"; # ou o terminal que você usa
    };
  };
}

