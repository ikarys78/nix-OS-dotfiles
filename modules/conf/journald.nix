{ config, lib, pkgs, ... }:

{
  services.journald.extraConfig = ''
    MaxFileSize=10M
    MaxUse=100M
  '';
}

