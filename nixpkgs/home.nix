{ config, pkgs, ... }:

{
  home.username = "icaro";
  home.homeDirectory = "/home/icaro";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  imports = [
   # ./modules/wms/hyprland.nix
    ./modules/wms/waybar.nix
    ./modules/zsh.nix
  ];
  wayland.windowManager.hyprland.enable = true;
  programs.zsh = {
    enable = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
    };

    oh-my-zsh = {
      enable = true;
      theme = "minimal"; # sem tema, usar powerlevel10k diretam>
      plugins = [
        "git"
        "z" 
        "sudo" 
        "colored-man-pages" 
        "history"
      ];
    };
  };

  home.file = {
    ".local/share/zsh/zsh-autosuggestions".source =
      "${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions";
    ".local/share/zsh/zsh-fast-syntax-highlighting".source =
      "$.local/share/zsh/zsh-fast-syntax-highlighting}/share;zsh/site-functions";
    
  };

  home.sessionVariables = {
    EDITOR = "neovim";
  };

  programs.home-manager.enable = true;
}
