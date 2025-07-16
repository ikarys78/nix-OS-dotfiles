# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
  imports =
    (import ./modules/conf) ++ [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/sistema/hyprland.nix
      ./modules/sistema/audio.nix
      ./modules/sistema/packages.nix
      ./modules/fonts/fonts.nix
      ./modules/user/icaro.nix
      ./modules/kernel/kernel.nix
      ./modules/vaapi/gpu-acceleration.nix
    ];
  
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;
  # boot.initrd.includeDefaultModules = false;
  # nix.settings.experimental-features = [ "nix-command" "flakes" ];
  #
  # boot = {
  #   kernel.sysctl = {
  #     "vm.swappiness" = 20;
  #     "vm.dirty_background_ratio" = 2;
  #     "vm.dirty_ratio" = 5;
  #     "vm.vfs_cache_pressure" = 25;
  #   };
  #   kernelParams = [        
  #     "zswap.enabled=1"
  #     "zswap.compressor=lz4"
  #     "zswap.max_pool_percent=40"
  #     "zswap.shrinker_enabled=1"
  #     "i915.enable_rc6=1"
  #     "i915.enable_psr=0"
  #   ];
  #
  # };
  #
  # powerManagement.enable = true;
  # powerManagement.cpuFreqGovernor = "performance";
  #
  # services.xserver.displayManager.lightdm.enable = true; # Ou outro display manager que você use
  #
  # networking.hostName = "nixos"; #   Define your hostname.
  # networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  # users.extraUsers."icaro".shell = pkgs.zsh;
  #
  # time.timeZone = "America/Sao_Paulo";
  # i18n.defaultLocale = "pt_BR.UTF-8";
  # programs.zsh.enable = true;
  #
  # services.journald.extraConfig = ''
  #   MaxFileSize=10M
  #   MaxUse=100
  # '';
  # nixpkgs.config.allowUnfree = true;
  # # swapDevices = 
  # #   { 
  # #     device = "/swapfile"; 
  # #     size = 16384;
  # #   }
  # # ];
  programs.hyprland = {
   enable = true;
  }; 
  #
  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;
  #
}



