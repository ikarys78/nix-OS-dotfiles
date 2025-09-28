{ pkgs, config, ... }:{
  home.packages = with pkgs; [
    gimp3
    nnn
    nix-output-monitor
    telegram-desktop
    hydralauncher
    wineWow64Packages.stable
    helix
    obsidian
  ];
}
