{config, lib, pkgs, ... }:
{
  xdg.configFile."hypr/hyprland.conf".source =
    ./hypr/hyprland.conf
}

