{ config, liv, pkgs, ...}: {
  #boot configurations
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.includeDefaultModules = false;

  boot = {
    kernel.sysctl = {
      "vm.swappiness" = 20;
      "vm.dirty_background_ratio" = 2;
      "vm.dirty_ratio" = 5;
      "vm.vfs_cache_pressure" = 25;
    };
    kernelParams = [        
      "zswap.enabled=1"
      "zswap.compressor=lz4"
      "zswap.max_pool_percent=40"
      "zswap.shrinker_enabled=1"
      "i915.enable_rc6=1"
      "i915.enable_psr=0"
    ];
  };
  swapDevices = [
    { device = "/swapfile"; size = 16384; }
  ];
}
