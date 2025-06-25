{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = [{
      layer = "top";
      height = 28;
      width = 1595;
      margin = 5;

      modules-left = [ "custom/arch" "hyprland/workspaces" "memory" ];
      modules-center = [ "clock" ];
      modules-right = [ "temperature" "network" ];

      "custom/arch" = {
        format = "  ";
        on-click = "sh ~/.config/hypr/rofi-launcher.sh";
      };

      clock = {
        format = "<span color='#ffffff'>{:%H:%M}</span>";
        format-alt = "<span foreground='#b69bf1'> {:%H:%M:%S}</span>";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt>{:%A, %d}</tt>";
      };

      "hyprland/workspaces" = {
        format = "{icon}";
        on-click = "activate";
        all-outputs = true;
        persistent_workspaces = {
          "1" = [ ];
          "2" = [ ];
          "3" = [ ];
          "4" = [ ];
          "5" = [ ];
          "6" = [ ];
          "7" = [ ];
          "8" = [ ];
          "9" = [ ];
          "10" = [ ];
        };
        format-icons = {
          "1" = "1";
          "2" = "2";
          "3" = "3";
          "4" = "4";
          "5" = "5";
          "6" = "6";
          "7" = "7";
          "8" = "8";
          "9" = "9";
          "10" = "1〇";
        };
      };

      network = {
        interface = "enp2s0";
        format = "{ifname}";
        format-ethernet = " ";
        on-click = "kitty nmtui";
      };

      memory = {
        format = "<span foreground='#ffffff'></span> {used} / {total}";
        on-click = "kitty btop";
      };
    }];

    style = ''
      @import "${config.home.homeDirectory}/.config/waybar/style.css";
    '';
  };
}

