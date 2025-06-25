{ config, pkgs, ... }:

{
  hardware.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    audio.enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };
}

