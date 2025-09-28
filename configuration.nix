
{ config, lib, pkgs, inputs, ... }:

{
  imports =
    (import ./modules/conf) ++ 
    (import .//sistema) ++[
      ./hardware-configuration.nix
      ./modules/fonts/fonts.nix
      ./modules/user/icaro.nix
      ./modules/kernel/kernel.nix
      ./modules/vaapi/gpu-acceleration.nix
    ];
  programs.hyprland = {
   enable = true;
  }; 
  #
  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;
  services.xserver.enable = true; # Garante que o X server esteja habilitado
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.displayManager.lightdm.greeters.gtk.enable = true;
  #
  services.flatpak.enable = true;
  
    
}



