{ config, pkgs, lib, ... }:
{
  programs.kitty = {
    enable = true;
    themeFile = "gruvbox-dark";

    settings = {
      bold_font = "JetBrainsMono Nerd Font Mono Extra Bold";
      bold_italic_font = "JetBrainsMono Nerd Font Mono Extra Bold Italic";
      enable_audio_bell = false;
      font_family = "JetBrainsMono Nerd Font Mono";
      background_opacity = 0.7;
      font_size = 10.0;
      confirm_os_window_close = 0;
    };
  };
}
