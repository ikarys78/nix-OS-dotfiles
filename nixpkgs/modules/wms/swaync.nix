{config, ...}: {
  services.swaync = {
    enable = true;
    settings = {
      positionX = "right";
      positionY = "top";
      layer = "overlay";
      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      control-center-margin-right = 10;
      control-center-margin-left = 10;
      notification-icon-size = 64;
      notification-body-image-height = 100;
      notification-body-image-width = 200;
      timeout = 10;
      timeout-low = 5;
      timeout-critical = 0;
      fit-to-screen = false;
      control-center-width = 500;
      control-center-height = 1025;
      notification-window-width = 500;
      keyboard-shortcuts = true;
      image-visibility = "when-available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      script-fail-notify = true;
      widget-config = {
        title = {
          text = "Notification Center";
          clear-all-button = true;
          button-text = "󰆴 Clear All";
        };
        dnd = {
          text = "Do Not Disturb";
        };
        label = {
          max-lines = 1;
          text = "Notification Center";
        };
        mpris = {
          image-size = 96;
          image-radius = 7;
        };
        volume = {
          label = "󰕾";
        };
        backlight = {
          label = "󰃟";
        };
      };
      widgets = [
        "title"
        "mpris"
        "volume"
        "backlight"
        "dnd"
        "notifications"
      ];
    };

    style = ''
      * {
        all: unset;
        font-size: 14px;
        transition: 200ms;
        font-family: JetBrainsMono Nerd Font Mono;
        font-weight: bold;
      }

      trough highlight {
        background: #ebdbb2;
      }

      scale trough {
        margin: 0rem 1rem;
        background-color: #3c3836;
        min-height: 8px;
        min-width: 70px;
      }

      slider {
        background-color: #458588;
      }

      .floating-notifications.background .notification-row .notification-background {
        box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.8), inset 0 0 0 1px #3c3836;
        border-radius: 12.6px;
        margin: 18px;
        background-color: rgba(40, 40, 40, 0.9);
        color: #ebdbb2;
        padding: 0;
      }

      .floating-notifications.background .notification-row .notification-background .notification {
        padding: 7px;
        border-radius: 12.6px;
      }

      .floating-notifications.background .notification-row .notification-background .notification.critical {
        box-shadow: inset 0 0 7px 0 #cc241d;
      }

      .floating-notifications.background .notification-row .notification-background .notification .notification-content {
        margin: 7px;
      }

      .floating-notifications.background .notification-row .notification-background .notification .notification-content .summary {
        color: #ebdbb2;
      }

      .floating-notifications.background .notification-row .notification-background .notification .notification-content .time {
        color: #a89984;
      }

      .floating-notifications.background .notification-row .notification-background .notification .notification-content .body {
        color: #ebdbb2;
      }

      .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * {
        min-height: 3.4em;
      }

      .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * .notification-action {
        border-radius: 7px;
        color: #ebdbb2;
        background-color: #3c3836;
        box-shadow: inset 0 0 0 1px #504945;
        margin: 7px;
      }

      .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * .notification-action:hover {
        background-color: #504945;
        color: #ebdbb2;
      }

      .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * .notification-action:active {
        background-color: #689d6a;
        color: #ebdbb2;
      }

      .floating-notifications.background .notification-row .notification-background .close-button {
        margin: 7px;
        padding: 2px;
        border-radius: 6.3px;
        color: #282828;
        background-color: #cc241d;
      }

      .floating-notifications.background .notification-row .notification-background .close-button:hover {
        background-color: #fb4934;
        color: #282828;
      }

      .floating-notifications.background .notification-row .notification-background .close-button:active {
        background-color: #cc241d;
        color: #282828;
      }

      .control-center {
        box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.8), inset 0 0 0 1px #3c3836;
        border-radius: 12.6px;
        margin: 18px;
        background-color: rgba(40, 40, 40, 0.9);
        color: #ebdbb2;
        padding: 14px;
      }

      .control-center .widget-title > label {
        color: #ebdbb2;
        font-size: 1.3em;
      }

      .control-center .widget-title button {
        border-radius: 7px;
        color: #ebdbb2;
        background-color: #3c3836;
        box-shadow: inset 0 0 0 1px #504945;
        padding: 8px;
      }

      .control-center .widget-title button:hover {
        background-color: #504945;
        color: #ebdbb2;
      }

      .control-center .widget-title button:active {
        background-color: #689d6a;
        color: #282828;
      }

      .control-center .notification-row .notification-background {
        border-radius: 7px;
        color: #ebdbb2;
        background-color: #3c3836;
        box-shadow: inset 0 0 0 1px #504945;
        margin-top: 14px;
      }

      .control-center .notification-row .notification-background .notification {
        padding: 7px;
        border-radius: 7px;
      }

      .control-center .notification-row .notification-background .notification.critical {
        box-shadow: inset 0 0 7px 0 #cc241d;
      }

      .control-center .notification-row .notification-background .notification .notification-content {
        margin: 7px;
      }

      .control-center .notification-row .notification-background .notification .notification-content .summary {
        color: #ebdbb2;
      }

      .control-center .notification-row .notification-background .notification .notification-content .time {
        color: #a89984;
      }

      .control-center .notification-row .notification-background .notification .notification-content .body {
        color: #ebdbb2;
      }

      .control-center .notification-row .notification-background .notification > *:last-child > * .notification-action {
        border-radius: 7px;
        color: #ebdbb2;
        background-color: #282828;
        box-shadow: inset 0 0 0 1px #504945;
        margin: 7px;
      }

      .control-center .notification-row .notification-background .notification > *:last-child > * .notification-action:hover {
        background-color: #3c3836;
        color: #ebdbb2;
      }

      .control-center .notification-row .notification-background .notification > *:last-child > * .notification-action:active {
        background-color: #689d6a;
        color: #ebdbb2;
      }

      .control-center .notification-row .notification-background .close-button {
        margin: 7px;
        padding: 2px;
        border-radius: 6.3px;
        color: #282828;
        background-color: #d65d0e;
      }

      .control-center .notification-row .notification-background .close-button:hover {
        background-color: #fe8019;
        color: #282828;
      }

      .control-center .notification-row .notification-background:hover {
        background-color: #504945;
        color: #ebdbb2;
      }

      .control-center .notification-row .notification-background:active {
        background-color: #689d6a;
        color: #ebdbb2;
      }

      .notification.critical progress {
        background-color: #cc241d;
      }

      .notification.low progress,
      .notification.normal progress {
        background-color: #458588;
      }

      .control-center-dnd {
        margin-top: 5px;
        border-radius: 8px;
        background: #3c3836;
        border: 1px solid #504945;
        box-shadow: none;
      }

      .control-center-dnd slider {
        background: #504945;
        border-radius: 8px;
      }

      .widget-dnd {
        margin: 0px;
        font-size: 1.1rem;
      }

      .widget-dnd > switch {
        border-radius: 8px;
        background: #3c3836;
        border: 1px solid #504945;
      }

      .widget-dnd > switch:checked {
        background: #3c3836;
      }

      .widget-dnd > switch slider {
        background: #504945;
        border-radius: 8px;
        border: 1px solid #a89984;
      }

      .widget-mpris .widget-mpris-player {
        background: rgba(40, 40, 40, 0.9);
        padding: 7px;
      }

      .widget-mpris .widget-mpris-title {
        font-size: 1.2rem;
      }

      .widget-mpris .widget-mpris-subtitle {
        font-size: 0.8rem;
      }

      .power-buttons button:hover,
      .powermode-buttons button:hover,
      .screenshot-buttons button:hover {
        background: #3c3836;
      }

      .control-center .widget-label > label {
        color: #ebdbb2;
        font-size: 2rem;
      }

      .widget-volume label {
        font-size: 1.5rem;
        color: #458588;
      }

      .widget-volume trough highlight {
        background: #458588;
      }

      .widget-backlight label {
        font-size: 1.5rem;
        color: #d79921;
      }

      .widget-backlight trough highlight {
        background: #d79921;
      }

      .image {
        padding-right: 0.5rem;
      }
    '';
  };
}

