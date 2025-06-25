{ config, pkgs, ... }:

let
  flakeDir = "/etc/nixos"; 
in {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hms = "home-manager switch --flake ${flakeDir}";

      conf = "nvim ${flakeDir}/configuration.nix";
      pkgs = "nvim ${flakeDir}/modules/sistema/packages.nix";

      ll = "ls -l";
      v = "nvim";
      se = "sudoedit";
      ff = "fastfetch";
    };

    history = {
      size = 10000;
      save = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
      ignoreAllDups = true;
      share = true;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "agnoster"; # outros: robbyrussell, af-magic, bira, etc
    };
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];
  };
}

