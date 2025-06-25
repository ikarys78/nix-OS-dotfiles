{configs, ...}:
{
users.users.icaro = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    password = "123";
  };
}
