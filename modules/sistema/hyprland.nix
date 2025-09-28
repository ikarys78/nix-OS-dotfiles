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
  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };
  services.xserver.enable = true;
  services.xserver.xkb.layout = "br";
  services.xserver.xkb.variant = "abnt2";
  console.keyMap = "br-abnt2";
}

