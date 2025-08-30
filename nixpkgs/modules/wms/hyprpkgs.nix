{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
    hyprshot
    hyprlock
    hypridle
    tofi
    swaynotificationcenter
    swww
  ];
}
