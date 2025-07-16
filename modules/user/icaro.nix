{configs, pkgs, ...}:
{
  users.users.icaro = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "render" ];
    password = "123";
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;
}
