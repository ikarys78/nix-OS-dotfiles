# { config, pkgs, ... }:
#
# {
#   programs.waybar = {
#     enable = true;
#
#     settings = [{
#       layer = "top";
#       height = 28;
#       width = 1595;
#       margin-top = 5;
#
#       modules-left = [ "custom/arch" "hyprland/workspaces" "memory" ];
#       modules-center = [ "clock" ];
#       modules-right = [ "network" "pulseaudio"];
#
#       "custom/arch" = {
#         format = "<span font='Hack Nerd Font' size='large' rise='-1500'></span>";
#         on-click = "sh ~/.config/hypr/rofi-launcher.sh";
#       };
#
#       clock = {
#         format = "{:%R}";
#         format-alt = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#ffffff'></span>  {:%A, %d. %b, %Y}";
#         tooltip = false;
#       };
#
#       "hyprland/workspaces" = {
#         format = "{icon}";
#         on-click = "activate";
#         all-outputs = true;
#         persistent_workspaces = {
#           "1" = [ ];
#           "2" = [ ];
#           "3" = [ ];
#           "4" = [ ];
#           "5" = [ ];
#           "6" = [ ];
#           "7" = [ ];
#           "8" = [ ];
#           "9" = [ ];
#           "10" = [ ];
#         };
#         format-icons = {
#           "1" = "1";
#           "2" = "2";
#           "3" = "3";
#           "4" = "4";
#           "5" = "5";
#           "6" = "6";
#           "7" = "7";
#           "8" = "8";
#           "9" = "9";
#           "10" = "1〇";
#         };
#       };
#
#       network = {
#         interface = "enp2s0";
#         format = "{ifname}";
#         format-ethernet = " ";
#         on-click = "kitty nmtui";
#       };
#
#       memory = {
#         format = "<span font='Hack Nerd Font' size='large' foreground='#ffffff'>󰍛 </span> {used} Gb";
#         #formar = "<span font='Hack Nerd Font' size='large' rise='-1500'color='#ff ffff'>󰍛</span> {used}%";
#         on-click = "kitty btop";
#       };
#       pulseaudio = {
#         format = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#ffffff'></span>  <span rise='-200'>{volume}%</span>";
#         tooltip = false;
#       };
#     }];
#     style = builtins.readFile ./style.css;
#   };
# }


{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = [{
      layer = "top";
      height = 28;
      width = 1595;
      margin-top = 5;
    
      modules-left = [ "custom/arch" "memory" ];
      modules-center = [ "hyprland/workspaces" ];
      modules-right = [ "custom/notification" "network" ];

      "custom/arch" = {
        format = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#d79921'></span>";
        on-click = "sh ~/.config/hypr/rofi-launcher.sh";
      };

      clock = {
        format = "{:%R}";
        format-alt = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#fbf1c7'></span>  {:%A, %d. %b, %Y}";
        tooltip = false;
      };

      "hyprland/workspaces" = {
        active-only = false;
        format = "{icon}";
        tooltip = false;
        all-outputs = true;
        color = "rgba(251, 241, 199, 1)";
        format-icons = {
          active = "<span color='#d79921'></span>";
          default = "<span color='#fbf1c7'></span>";
        };
        persistent-workspaces = {
          "*" = 5;
        };
      };
      "custom/notification" = {
        tooltip = false;
        format = "{icon}";
        format-icons = {
          notification = "<span foreground='#fbf1c7'><sup></sup></span>";
          none = "<span foreground='#fbf1c7'></span>";
          dnd-notification = "<span foreground='#fbf1c7'><sup></sup></span>";
          dnd-none = "<span foreground='#d79921'</span>";
          inhibited-notification = "<span foreground='#fbf1c7'><sup></sup></span>";
          inhibited-none = "<span foreground='#d79921'></span>";
          dnd-inhibited-notification = "<span foreground='#fbf1c7'><sup></sup></span>";
          dnd-inhibited-none = "";
        };
        return-type = "json";
        exec-if = "which swaync-client";
        exec = "swaync-client -swb";
        on-click = "swaync-client -t -sw";
        on-click-right = "swaync-client -d -sw";
        escape = true;        
      };
      network = {
        interface = "enp2s0";
        format = "{ifname}";
        format-ethernet = "<span color='#d79921'> </span>";
        on-click = "kitty nmtui";
      };

      memory = {
        format = "<span font='Hack Nerd Font' size='large' foreground='#fbf1c7'> </span> {used} Gb";
        #formar = "<span font='Hack Nerd Font' size='large' rise='-1500'color='#ff ffff'>󰍛</span> {used}%";
        on-click = "kitty btop";
      };
      pulseaudio = {
        format = "<span font='Hack Nerd Font' size='large' rise='-1500' foreground='#fbf1c7'></span>  <span rise='-200' color='#fbf1c7'>{volume}%</span>";
        tooltip = false;
      };
    }];
    style = builtins.readFile ./style.css;
  };
}


