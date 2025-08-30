
{ config, lib, pkgs, inputs, ... }:

{
  imports =
    (import ./modules/conf) ++ 
    (import ./modules/sistema) ++[
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
  
  nix = let 
    flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
  in {
    settings = {
      experimental-features = "nix-command flakes";
      flake-registery = "";
      nix-path = config.nix.nixPath;
    };
    
    channel.enable = false;
    registery = lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs;
    nixPath = lib.mapAttrsToList (n: _: "{n}=flake:{n}") flakeInputs;
  }; 

}



