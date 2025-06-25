{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = [{
      layer = "top";
      height = 28;
      width = 1595;
      margin-top = 5;
    
      modules-left = [ "custom/arch" "hyprland/workspaces" "memory" ];
      modules-center = [ "clock" ];
      modules-right = [ "temperature" "network" ];

      "custom/arch" = {
        format = "  ";
        on-click = "sh ~/.config/hypr/rofi-launcher.sh";
      };

      clock = {
        format = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#ffffff'>󰥔</span>  {:%R}";
        format-alt = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#ffffff'>󰥔</span>  {:%A, %d. %b, %Y}";
        tooltip = false;
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
    style = builtins.readFile ./style.css;
  };
}

