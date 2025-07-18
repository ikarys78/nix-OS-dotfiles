{ config, pkgs, lib, ... }:
{
  programs.git = {
    enable = true;
    userName = "ikays78";
    userEmail = "icaro.cellista@gmail.com";
    extraConfig.init.defaultBranch = "main";
  };
}
