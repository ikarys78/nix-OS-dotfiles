{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      "$mainMod" = "SUPER";
      monitor=",preferred,auto,auto";
      
    };
    #wayland.windowManager.hyprland.settings.env = [
    #  "XCURSOR_SIZE, 24"
    #];

    wayland.windowManager.hyprland.settings.input = {
      kb_layout = "pt_br";
      
    };
    wayland.windowManager.hyprland.settings.general = {
      gaps_in = 1;
      gaps_out = 3;
      border_size = 2;
      "col.active_border" = "rgba(3A333645)";
      "col.inactive_border"= "rgba(3A333645)";
    };
    wayland.windowManager.hyprland.settings.decoration = {
      rounding = 4;
      blur = {
        enabled = true;
        size = 1;
        passes = 4;
        new_optimizations = true;
      };
    };
    wayland.windowManager.hyprland.settings.exec-once= [
      "hyprpaper"
      "waybar"
    ];
    
      
    wayland.windowManager.hyprland.settings = {
      bind = [
        "windows, 1, 3, myBezier"
        "windowsOut, 1, 5, default, popin 80%"
        "border, 1, 10, default"
        "fade, 1, 5, default"
        "animation = workspaces, 1, 4, noBounce, slide"
      
    
    
    
        "$mainMod, Q, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, E, exec, dolphin"
        "$mainMod, F, togglefloating,"
        "$mainMod, D, exec, wofi --show drun"
        "$mainMod, P, pseudo, # dwindle"
        "$mainMod, J, togglesplit, # dwindle"
        "bind = $mainMod, L, exec, grim ~/Imagens/screenshots/screenshot_$(date +%F_%T).png"
      

        "$mainMod, left,  movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up,    movefocus, u"
        "$mainMod, down,  movefocus, d"
      
        "$mainMod, 1, workspace, 1"
        "SUPER, 2, workspace, 2"
        "SUPER, 3, workspace, 3"
        "SUPER, 4, workspace, 4"
        "SUPER, 5, workspace, 5"
        "SUPER, 6, workspace, 6"
        "SUPER, 7, workspace, 7"
        "SUPER, 8, workspace, 8"
        "SUPER, 9, workspace, 9"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3" 
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "mainMod SHIFT, 9, movetoworkspace, 9"
        "mainMod SHIFT, 0, movetoworkspace, 10"     

        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        "XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
        ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"   
    
   
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
