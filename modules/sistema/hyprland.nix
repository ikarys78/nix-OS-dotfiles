{ config, pkgs, ... }:
# modulo do hypr
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland
    waybar 
    rofi-wayland-unwrapped 
    kitty
    xdg-utils 
    xdg-desktop-portal-hyprland
    hyprpaper  
    wlogout
    swaylock
  ];

  services.xserver.enable = true;
  services.xserver.xkb.layout = "br";
  services.xserver.xkb.variant = "abnt2";
  console.keyMap = "br-abnt2";
}

