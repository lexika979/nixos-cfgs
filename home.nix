{ config, pkgs, ... }:

{
  home.username = "andre";
  home.homeDirectory = "/home/andre";
  home.stateVersion = "24.05";
  
  dconf.settings = {
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };
    "org/gnome/shell" = {
      last-selected-power-profile = "performance";
      disable-user-extensions = false;
      enabled-extensions = [
        "trayIconsReloaded@selfmade.pl"
        "dash-to-panel@jderose9.github.com"
        "arcmenu@arcmenu.com"
      ];
      favorite-apps = [];#["org.gnome.Nautilus.desktop" "firefox.desktop" "org.gnome.Console.desktop"];
    };
    "org/gnome/shell/extensions/dash-to-panel" = {
        primary-monitor = 0;
        available-monitors = [0];
        dot-position = "TOP";
        panel-lengths = "{\"0\":100}";
        panel-anchors = "{\"0\":\"MIDDLE\"}";
        window-preview-title-position = "TOP";
        hotkeys-overlay-combo = "TEMPORARILY";
        panel-sizes = "{\"0\":45}";
        appicon-margin = 8;
        appicon-padding = 6;
        leftbox-padding = -1;
        status-icon-padding = -1;
        tray-padding = -1;
        trans-use-custom-opacity = true;
        trans-use-custom-gradient = true;
        trans-panel-opacity = 0.8;
        trans-gradient-bottom-opacity = 0.8;
        show-window-previews-timeout = 75;
        window-preview-animation-time = 0;
        enter-peek-mode-timeout = 50;
        animate-app-switch = false;
        animate-window-launch = false;
        window-preview-size = 180;
        window-preview-hide-immediate-click = true;
        dot-style-unfocused = "METRO";
        dot-style-focused = "METRO";
        focus-highlight-opacity = 10;
        panel-element-positions = "{\"0\":[{\"element\":\"showAppsButton\",\"visible\":false,\"position\":\"stackedTL\"},{\"element\":\"activitiesButton\",\"visible\":false,\"position\":\"stackedTL\"},{\"element\":\"leftBox\",\"visible\":true,\"position\":\"stackedTL\"},{\"element\":\"taskbar\",\"visible\":true,\"position\":\"centerMonitor\"},{\"element\":\"centerBox\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"rightBox\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"dateMenu\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"systemMenu\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"desktopButton\",\"visible\":true,\"position\":\"stackedBR\"}]}";
    };
    "org/gnome/desktop/interface" = {
      enable-hot-corners = "false";
      color-scheme = "prefer-dark";
    };
    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
    };
    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
    };
    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };
    "org/gnome/shell/extensions/arcmenu" = {
      menu-layout = "Runner";
      menu-button-appearance = "None";
      runner-position = "Centered";
      runner-show-frequent-apps = true;
    };
    "org/gnome/desktop/notifications" = {
      show-banners = false;
    };
    "org/gnome/shell/keybindings" = {
      show-screenshot-ui = ["<Alt>Page_Up"];
      show-screen-recording-ui = ["<Alt>Page_Down"];
    };
  };
  
  home.packages = with pkgs; [
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.dash-to-panel
    gnomeExtensions.arcmenu
  ];

  programs.home-manager.enable = true;
}
