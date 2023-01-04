# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/shell/extensions/dash-to-dock/";
      saved-view = "/org/gnome/shell/extensions/";
      show-warning = false;
      window-height = 525;
      window-is-maximized = false;
      window-width = 948;
    };


    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/Weather" = {
      locations = "[<(uint32 2, <('Santiago', 'SCEL', true, [(-0.58264907613967609, -1.2354022163855554)], [(-0.58381263479210321, -1.2333660105604238)])>)>]";
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      word-size = 64;
    };

    "org/gnome/calendar" = {
      active-view = "month";
      window-maximized = true;
      window-size = mkTuple [ 768 600 ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 980 640 ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "compose:ralt" "lv3:ralt_switch" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      gtk-theme = "Adwaita-dark";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "code" "firefox" "gnome-power-panel" "org-gnome-calendar" "org-gnome-console" "steam" ];
      show-banners = false;
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/discord" = {
      application-id = "discord.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-calendar" = {
      application-id = "org.gnome.Calendar.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-epiphany" = {
      application-id = "org.gnome.Epiphany.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-evolution-alarm-notify" = {
      application-id = "org.gnome.Evolution-alarm-notify.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-fileroller" = {
      application-id = "org.gnome.FileRoller.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-telegram-desktop" = {
      application-id = "org.telegram.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/steam" = {
      application-id = "steam.desktop";
    };

    "org/gnome/desktop/notifications/application/telegramdesktop" = {
      application-id = "telegramdesktop.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      maximize = [ ];
      minimize = [ "<Super>comma" ];
      move-to-monitor-down = [ ];
      move-to-monitor-left = [ ];
      move-to-monitor-right = [ ];
      move-to-monitor-up = [ ];
      move-to-workspace-1 = [ "<Shift><Super>1" ];
      move-to-workspace-2 = [ "<Shift><Super>2" ];
      move-to-workspace-3 = [ "<Shift><Super>3" ];
      move-to-workspace-4 = [ "<Shift><Super>4" ];
      move-to-workspace-down = [ ];
      move-to-workspace-up = [ ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-down = [ "<Primary><Super>Down" "<Primary><Super>j" ];
      switch-to-workspace-left = [ "<Alt><Super>Left" ];
      switch-to-workspace-right = [ "<Alt><Super>Right" ];
      switch-to-workspace-up = [ "<Primary><Super>Up" "<Primary><Super>k" ];
      toggle-maximized = [ "<Super>m" ];
      unmaximize = [ ];
    };

    "org/gnome/desktop/wm/preferences" = {
      focus-mode = "sloppy";
    };

    "org/gnome/epiphany" = {
      default-search-engine = "DuckDuckGo";
      search-engine-providers = "[{'url': <'https://www.bing.com/search?q=%s'>, 'bang': <'!b'>, 'name': <'Bing'>}, {'url': <'https://duckduckgo.com/?q=%s&t=epiphany'>, 'bang': <'!ddg'>, 'name': <'DuckDuckGo'>}, {'url': <'https://www.google.com/search?q=%s'>, 'bang': <'!g'>, 'name': <'Google'>}]";
    };

    "org/gnome/epiphany/state" = {
      is-maximized = true;
      window-size = mkTuple [ 0 0 ];
    };

    "org/gnome/epiphany/sync" = {
      sync-bookmarks-enabled = true;
      sync-bookmarks-initial = false;
      sync-bookmarks-time = mkInt64 1671424975;
      sync-device-id = "f5fe5608219ee9c8640f2fee2026baa4";
      sync-device-name = "x13-epiphany";
      sync-frequency = mkUint32 15;
      sync-history-enabled = true;
      sync-history-initial = false;
      sync-history-time = mkInt64 1671461312;
      sync-open-tabs-enabled = true;
      sync-open-tabs-time = mkInt64 1671465242;
      sync-passwords-enabled = true;
      sync-passwords-initial = false;
      sync-time = mkInt64 1671465236;
      sync-user = "sfaragg@gmail.com";
    };

    "org/gnome/epiphany/web" = {
      default-zoom-level = 1.0;
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/evolution-data-server/calendar" = {
      notify-window-height = 281;
      notify-window-paned-position = 73;
      notify-window-width = 179;
      notify-window-x = 0;
      notify-window-y = 32;
    };

    "org/gnome/file-roller/dialogs/extract" = {
      recreate-folders = true;
      skip-newer = false;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 250;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "resources";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 700 500 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = false;
      edge-tiling = false;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ ];
      toggle-tiled-right = [ ];
    };

    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [ ];
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "zip";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 948 1152 ];
    };

    "org/gnome/nm-applet/eap/7909ba14-6ada-4017-a953-b022d3d5c272" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/portal/filechooser/org/kde/kate" = {
      last-folder-path = "/home/step/nix-dots";
    };

    "org/gnome/power-manager" = {
      info-history-type = "charge";
      info-last-device = "/org/freedesktop/UPower/devices/battery_BAT0";
      info-page-number = 0;
      info-stats-type = "discharge-accuracy";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/"
      ];
      email = [ "<Super>e" ];
      home = [ "<Super>n" ];
      rotate-video-lock-static = [ ];
      screensaver = [ "<Super>Escape" ];
      terminal = [ "<Super>t" ];
      www = [ "<Super>w" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "";
      command = "kgx";
      name = "terminal";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>Return";
      command = "gnome-terminal";
      name = "terminal";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "Launch1";
      command = "asusctl --next-kbd-bright";
      name = "keyboard-bg";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
      binding = "Launch4";
      command = "asusctl profile -n";
      name = "asusctl profiles";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "apps-menu@gnome-shell-extensions.gcampax.github.com" "tiling-assistant@leleat-on-github" "dash-to-dock@micxgx.gmail.com" ];
      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "Vitals@CoreCoding.com"
        "no-overview@fthx"
        "clipboard-indicator@tudmotu.com"
        "extension-list@tu.berry"
        "pop-shell@system76.com"
        "supergfxctl-gex@asus-linux.org"
        "x11gestures@joseexposito.github.io"
        "transparent-shell@siroj42.github.io"
      ];
      favorite-apps = [
        "firefox.desktop"
        "org.gnome.Calendar.desktop"
        "org.gnome.Nautilus.desktop"
        "org.gnome.Terminal.desktop"
        "code.desktop"
      ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "43.1";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      background-opacity = 0.8;
      dash-max-icon-size = 32;
      dock-position = "BOTTOM";
      height-fraction = 0.77;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "DP-0";
      show-trash = false;
    };

    "org/gnome/shell/extensions/extension-list" = {
      button-icon = mkUint32 0;
      toggle-unpin = false;
      unpin-list = [ "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com" "places-menu@gnome-shell-extensions.gcampax.github.com" "launch-new-instance@gnome-shell-extensions.gcampax.github.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" ];
    };

    "org/gnome/shell/extensions/pop-shell" = {
      active-hint = false;
      gap-inner = 8;
      gap-outer = 8;
      show-title = false;
      snap-to-grid = false;
      tile-by-default = true;
      tile-enter = [ "" ];
    };

    "org/gnome/shell/extensions/tiling-assistant" = {
      active-window-hint-color = "rgb(53,132,228)";
      last-version-installed = 39;
    };

    "org/gnome/shell/keybindings" = {
      focus-active-notification = [ ];
      open-application-menu = [ ];
      screenshot-window = [ "<Shift><Alt><Super>s" ];
      show-screenshot-ui = [ "<Shift><Super>s" ];
      switch-to-application-1 = [ "" ];
      switch-to-application-2 = [ "" ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ "" ];
      switch-to-application-5 = [ "" ];
      toggle-message-tray = [ "<Super>v" ];
      toggle-overview = [ ];
    };

    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = "[<(uint32 2, <('Santiago', 'SCEL', true, [(-0.58264907613967609, -1.2354022163855554)], [(-0.58381263479210321, -1.2333660105604238)])>)>]";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      background-color = "rgb(23,20,33)";
      foreground-color = "rgb(208,207,204)";
      use-theme-colors = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 169;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-size = mkTuple [ 888 374 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 157;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 39 78 ];
      window-size = mkTuple [ 1203 902 ];
    };

  };
}
