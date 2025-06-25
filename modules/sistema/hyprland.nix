{ config, pkgs, ... }:
# modulo do hypr
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland
    waybar 
    rofi-wayland 
    kitty
    xdg-utils 
    xdg-desktop-portal-hyprland
    hyprpaper  
  ];

  services.xserver.enable = true;
  services.xserver.layout = "br";
  services.xserver.xkbVariant = "abnt2";
  console.keyMap = "br-abnt2";
}

