{ ... }:
{
  programs.tofi = {
    enable = true;
    settings = {
      font = "VT323";
      corner-radius = 0;

      outline-color = "#a89984";   # cinza/gruvbox
      outline-width = 0;

      border-color = "#b16286";    # roxo
      border-width = 1;

      background-color = "#282828E6"; # fundo translúcido
      text-color = "#ebdbb2";      # foreground principal
      selection-color = "#458588"; # azul (destaque)

      prompt-text = "C:\\> ";
      num-results = 9;
      hide-cursor = true;
      width = 460;
      height = 380;
    };
  };
}

