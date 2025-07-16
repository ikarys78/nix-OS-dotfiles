{ config, pkgs, ... } :{

  nixpkgs.config.packagesOverrides = pkgs: {
    intel-vaapi-driver = pkgs.intel-vaapi-driver.overrride {enableHybridCodec = true;};
  };
  # video acelerado
  hardware.graphics.extraPackages32 = {
    enable = true;
    #enable32Bit = true;
    extraPackages = with pkgs.pkgsi686Linux; [
      intel-vaapi-driver
      libvdpau-va-gl
    ];
  };

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "i965";
    #VDPAU_DRIVER = "va_gl";
  };
}
