{ config, pkgs, ... }:

{
  services.xserver = {
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = false;
    desktopManager.gnome.enable = true;
  };
  environment.systemPackages = (with pkgs; [
    gnome.dconf-editor
    gnome.gnome-tweaks
    xdotool
    xbindkeys
  ]) ++ (with pkgs.gnomeExtensions; [
    vitals
    zfs-status-monitor
    clipboard-indicator
    no-overview
    tiling-assistant
    appindicator
    dash-to-dock
    extension-list
    transparent-shell
    caffeine
    # 
  ]);
  environment.gnome.excludePackages = with pkgs.gnome;
    [
      baobab # disk usage analyzer
      cheese # photo booth
      eog # image viewer
      epiphany # web browser
      gedit # text editor
      totem # video player
      yelp
      geary # email client
      gnome-characters
      gnome-clocks
      gnome-contacts
      gnome-font-viewer
      gnome-logs
      gnome-maps
      gnome-music
      pkgs.gnome-photos
      pkgs.gnome-connections

      # simple-scan # document scanner
      # evince # document viewer
      # file-roller # archive manager
      # seahorse # password manager
      # gnome-calculator
      # gnome-calendar
      # gnome-screenshot
      # gnome-system-monitor
      # gnome-weather
      # gnome-disk-utility
    ];
}
