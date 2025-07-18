
{ config, lib, pkgs, inputs, ... }:

{
  imports =
    (import ./modules/conf) ++ 
    (import ./modules/sistema) ++ [ 
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
  #
}



