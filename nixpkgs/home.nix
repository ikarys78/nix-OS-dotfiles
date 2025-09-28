{ config, pkgs,  lib, ... }:

{
  home.username = "icaro";
  home.homeDirectory = "/home/icaro";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  
  imports = [
    import ./modules
  ];
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "Adwaita";
    size = 24;
    package = pkgs.adwaita-icon-theme;
  };
    home.sessionVariables = {
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "24";
  };

  home.sessionVariables = {
    EDITOR = "neovim";
  };
  programs.home-manager.enable = true;
}
