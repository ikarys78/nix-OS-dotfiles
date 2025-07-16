{ config, lib, pkgs, ... }:

{
  powerManagement.enable = true;
  powerManagement.cpuFreqGovernor = "performance";
}

