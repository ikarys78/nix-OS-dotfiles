{configs, pkgs, ...}:
{
  programs.zsh = {
    enable = true;
    plugins = [   
    {
      name = "powerlevel10k";
      src = pkgs.zsh-powerlevel10k;
      file = "share/zsh-powerlevel10k/powerlevel10k.zsh->";
    }
    ];

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
    };

    oh-my-zsh = {
      enable = true;
      theme = ""; # sem tema, usar powerlevel10k diretam>
      plugins = [
        "git"
        "z" 
        "sudo" 
        "colored-man-pages" 
        "history"
      ];
    };


    initExtra = ''
      [[ -f ${./p10k/p10k.zsh} ]] && source ${./p10k/p10k.zsh}
    '';
  };
}
