{configs, pkgs, ...}:
{
  users.users.icaro = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "render" "vboxusers" ];
    password = "123";
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;
}
