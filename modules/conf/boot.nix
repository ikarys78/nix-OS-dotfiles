{ config, liv, pkgs, ...}: {
  #boot configurations
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = false;
  boot.initrd.includeDefaultModules = false;
  
  boot = {
    loader.grub = {
      enable = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      device = "nodev";
      
      extraEntries = ''
      menuentry "Arch Linux" {
        search --set=root --fs-uuid 832E-DD0C
        linux /boot/vmlinuz-linux root=832E-DD0C rw 
        initrd /boot/initramfs-linux.img
      }
      '';
      
    };
    kernel.sysctl = {
      "vm.swappiness" = 20;
      "vm.dirty_background_ratio" = 2;
      "vm.dirty_ratio" = 5;
      "vm.vfs_cache_pressure" = 25;
    };
    kernelModules = [
      "vboxdrv"
      "vboxnetadp"
      "vboxnetflt"
    ];
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
