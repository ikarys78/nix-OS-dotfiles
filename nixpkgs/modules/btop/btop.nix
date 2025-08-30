{ config, pkgs, lib, ... }:
{
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "gruvbox-dark"; 
      rounded_corners = true;
      update_ms = 500;
      vim_keys = true;
    };
  };
}
