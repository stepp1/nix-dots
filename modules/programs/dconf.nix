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

    "com/github/wwmm/easyeffects" = {
      bypass = false;
      last-used-input-preset = "Presets";
      last-used-output-preset = "Laptop";
      window-fullscreen = false;
      window-height = 429;
      window-maximized = true;
      window-width = 684;
    };

    "com/github/wwmm/easyeffects/streaminputs" = {
      input-device = "alsa_input.pci-0000_08_00.6.analog-stereo";
    };

    "com/github/wwmm/easyeffects/streamoutputs" = {
      blocklist = [ ];
      output-device = "alsa_output.pci-0000_08_00.6.analog-stereo";
      plugins = [ "gate#0" "compressor#0" "multiband_compressor#0" "equalizer#0" "limiter#0" ];
    };

    "com/github/wwmm/easyeffects/streamoutputs/compressor/0" = {
      attack = 130.0;
      boost-threshold = -60.0;
      knee = -23.9;
      mode = "Upward";
      ratio = 5.0;
      release = 600.0;
      sidechain-input-device = "alsa_input.pci-0000_08_00.6.analog-stereo";
      threshold = -10.0;
    };

    "com/github/wwmm/easyeffects/streamoutputs/convolver/0" = {
      autogain = true;
      input-gain = -2.0;
      kernel-path = "<PRESETS_DIRECTORY>/irs/Razor Surround ((48k Z-Edition)) 2.Stereo +20 bass.irs";
    };

    "com/github/wwmm/easyeffects/streamoutputs/equalizer/0" = {
      input-gain = 0.0;
      num-bands = 10;
    };

    "com/github/wwmm/easyeffects/streamoutputs/equalizer/0/leftchannel" = {
      band0-frequency = 32.0;
      band0-gain = 3.5;
      band0-q = 1.6;
      band0-type = "Bell";
      band1-frequency = 64.0;
      band1-gain = 2.0;
      band1-q = 1.6;
      band1-type = "Bell";
      band10-type = "Off";
      band11-type = "Off";
      band12-type = "Off";
      band13-type = "Off";
      band14-type = "Off";
      band15-type = "Off";
      band16-type = "Off";
      band17-type = "Off";
      band18-type = "Off";
      band19-type = "Off";
      band2-frequency = 128.0;
      band2-gain = 1.0;
      band2-q = 1.6;
      band2-type = "Bell";
      band20-type = "Off";
      band21-type = "Off";
      band22-type = "Off";
      band23-type = "Off";
      band24-type = "Off";
      band25-type = "Off";
      band26-type = "Off";
      band27-type = "Off";
      band28-type = "Off";
      band29-type = "Off";
      band3-frequency = 256.0;
      band3-q = 1.6;
      band3-type = "Bell";
      band30-type = "Off";
      band31-type = "Off";
      band4-frequency = 512.0;
      band4-gain = -0.5;
      band4-q = 1.6;
      band4-type = "Bell";
      band5-frequency = 1024.0;
      band5-gain = -1.5;
      band5-q = 1.6;
      band5-type = "Bell";
      band6-frequency = 2048.0;
      band6-gain = -0.25;
      band6-q = 1.6;
      band6-type = "Bell";
      band7-frequency = 4096.0;
      band7-gain = 1.25;
      band7-q = 1.6;
      band7-type = "Bell";
      band8-frequency = 8192.0;
      band8-gain = 2.75;
      band8-q = 1.6;
      band8-type = "Bell";
      band9-frequency = 16384.0;
      band9-gain = 3.0;
      band9-q = 1.6;
      band9-type = "Bell";
    };

    "com/github/wwmm/easyeffects/streamoutputs/equalizer/0/rightchannel" = {
      band0-frequency = 32.0;
      band0-gain = 3.5;
      band0-mode = "RLC (BT)";
      band0-mute = false;
      band0-q = 1.6;
      band0-slope = "x1";
      band0-solo = false;
      band0-type = "Bell";
      band1-frequency = 64.0;
      band1-gain = 2.0;
      band1-mode = "RLC (BT)";
      band1-mute = false;
      band1-q = 1.6;
      band1-slope = "x1";
      band1-solo = false;
      band1-type = "Bell";
      band10-frequency = 194.06;
      band10-gain = 0.0;
      band10-mode = "RLC (BT)";
      band10-mute = false;
      band10-q = 4.36;
      band10-slope = "x1";
      band10-solo = false;
      band10-type = "Off";
      band11-frequency = 240.81;
      band11-gain = 0.0;
      band11-mode = "RLC (BT)";
      band11-mute = false;
      band11-q = 4.36;
      band11-slope = "x1";
      band11-solo = false;
      band11-type = "Off";
      band12-frequency = 298.834;
      band12-gain = 0.0;
      band12-mode = "RLC (BT)";
      band12-mute = false;
      band12-q = 4.36;
      band12-slope = "x1";
      band12-solo = false;
      band12-type = "Off";
      band13-frequency = 370.834;
      band13-gain = 0.0;
      band13-mode = "RLC (BT)";
      band13-mute = false;
      band13-q = 4.36;
      band13-slope = "x1";
      band13-solo = false;
      band13-type = "Off";
      band14-frequency = 460.182;
      band14-gain = 0.0;
      band14-mode = "RLC (BT)";
      band14-mute = false;
      band14-q = 4.36;
      band14-slope = "x1";
      band14-solo = false;
      band14-type = "Off";
      band15-frequency = 571.057;
      band15-gain = 0.0;
      band15-mode = "RLC (BT)";
      band15-mute = false;
      band15-q = 4.36;
      band15-slope = "x1";
      band15-solo = false;
      band15-type = "Off";
      band16-frequency = 708.647;
      band16-gain = 0.0;
      band16-mode = "RLC (BT)";
      band16-mute = false;
      band16-q = 4.36;
      band16-slope = "x1";
      band16-solo = false;
      band16-type = "Off";
      band17-frequency = 879.387;
      band17-gain = 0.0;
      band17-mode = "RLC (BT)";
      band17-mute = false;
      band17-q = 4.36;
      band17-slope = "x1";
      band17-solo = false;
      band17-type = "Off";
      band18-frequency = 1091.26;
      band18-gain = 0.0;
      band18-mode = "RLC (BT)";
      band18-mute = false;
      band18-q = 4.36;
      band18-slope = "x1";
      band18-solo = false;
      band18-type = "Off";
      band19-frequency = 1354.19;
      band19-gain = 0.0;
      band19-mode = "RLC (BT)";
      band19-mute = false;
      band19-q = 4.36;
      band19-slope = "x1";
      band19-solo = false;
      band19-type = "Off";
      band2-frequency = 128.0;
      band2-gain = 1.0;
      band2-mode = "RLC (BT)";
      band2-mute = false;
      band2-q = 1.6;
      band2-slope = "x1";
      band2-solo = false;
      band2-type = "Bell";
      band20-frequency = 1680.47;
      band20-gain = 0.0;
      band20-mode = "RLC (BT)";
      band20-mute = false;
      band20-q = 4.36;
      band20-slope = "x1";
      band20-solo = false;
      band20-type = "Off";
      band21-frequency = 2085.35;
      band21-gain = 0.0;
      band21-mode = "RLC (BT)";
      band21-mute = false;
      band21-q = 4.36;
      band21-slope = "x1";
      band21-solo = false;
      band21-type = "Off";
      band22-frequency = 2587.79;
      band22-gain = 0.0;
      band22-mode = "RLC (BT)";
      band22-mute = false;
      band22-q = 4.36;
      band22-slope = "x1";
      band22-solo = false;
      band22-type = "Off";
      band23-frequency = 3211.29;
      band23-gain = 0.0;
      band23-mode = "RLC (BT)";
      band23-mute = false;
      band23-q = 4.36;
      band23-slope = "x1";
      band23-solo = false;
      band23-type = "Off";
      band24-frequency = 3985.01;
      band24-gain = 0.0;
      band24-mode = "RLC (BT)";
      band24-mute = false;
      band24-q = 4.36;
      band24-slope = "x1";
      band24-solo = false;
      band24-type = "Off";
      band25-frequency = 4945.15;
      band25-gain = 0.0;
      band25-mode = "RLC (BT)";
      band25-mute = false;
      band25-q = 4.36;
      band25-slope = "x1";
      band25-solo = false;
      band25-type = "Off";
      band26-frequency = 6136.63;
      band26-gain = 0.0;
      band26-mode = "RLC (BT)";
      band26-mute = false;
      band26-q = 4.36;
      band26-slope = "x1";
      band26-solo = false;
      band26-type = "Off";
      band27-frequency = 7615.17;
      band27-gain = 0.0;
      band27-mode = "RLC (BT)";
      band27-mute = false;
      band27-q = 4.36;
      band27-slope = "x1";
      band27-solo = false;
      band27-type = "Off";
      band28-frequency = 9449.96;
      band28-gain = 0.0;
      band28-mode = "RLC (BT)";
      band28-mute = false;
      band28-q = 4.36;
      band28-slope = "x1";
      band28-solo = false;
      band28-type = "Off";
      band29-frequency = 11726.8;
      band29-gain = 0.0;
      band29-mode = "RLC (BT)";
      band29-mute = false;
      band29-q = 4.36;
      band29-slope = "x1";
      band29-solo = false;
      band29-type = "Off";
      band3-frequency = 256.0;
      band3-gain = 0.0;
      band3-mode = "RLC (BT)";
      band3-mute = false;
      band3-q = 1.6;
      band3-slope = "x1";
      band3-solo = false;
      band3-type = "Bell";
      band30-frequency = 14552.2;
      band30-gain = 0.0;
      band30-mode = "RLC (BT)";
      band30-mute = false;
      band30-q = 4.36;
      band30-slope = "x1";
      band30-solo = false;
      band30-type = "Off";
      band31-frequency = 18058.4;
      band31-gain = 0.0;
      band31-mode = "RLC (BT)";
      band31-mute = false;
      band31-q = 4.36;
      band31-slope = "x1";
      band31-solo = false;
      band31-type = "Off";
      band4-frequency = 512.0;
      band4-gain = -0.5;
      band4-mode = "RLC (BT)";
      band4-mute = false;
      band4-q = 1.6;
      band4-slope = "x1";
      band4-solo = false;
      band4-type = "Bell";
      band5-frequency = 1024.0;
      band5-gain = -1.5;
      band5-mode = "RLC (BT)";
      band5-mute = false;
      band5-q = 1.6;
      band5-slope = "x1";
      band5-solo = false;
      band5-type = "Bell";
      band6-frequency = 2048.0;
      band6-gain = -0.25;
      band6-mode = "RLC (BT)";
      band6-mute = false;
      band6-q = 1.6;
      band6-slope = "x1";
      band6-solo = false;
      band6-type = "Bell";
      band7-frequency = 4096.0;
      band7-gain = 1.25;
      band7-mode = "RLC (BT)";
      band7-mute = false;
      band7-q = 1.6;
      band7-slope = "x1";
      band7-solo = false;
      band7-type = "Bell";
      band8-frequency = 8192.0;
      band8-gain = 2.75;
      band8-mode = "RLC (BT)";
      band8-mute = false;
      band8-q = 1.6;
      band8-slope = "x1";
      band8-solo = false;
      band8-type = "Bell";
      band9-frequency = 16384.0;
      band9-gain = 3.0;
      band9-mode = "RLC (BT)";
      band9-mute = false;
      band9-q = 1.6;
      band9-slope = "x1";
      band9-solo = false;
      band9-type = "Bell";
    };

    "com/github/wwmm/easyeffects/streamoutputs/gate/0" = {
      attack = 2000.0;
      curve-threshold = -40.0;
      curve-zone = -40.0;
      reduction = -30.0;
      release = 2000.0;
      sidechain-input-device = "alsa_input.pci-0000_08_00.6.analog-stereo";
      sidechain-mode = "Peak";
    };

    "com/github/wwmm/easyeffects/streamoutputs/limiter/0" = {
      alr = true;
      gain-boost = false;
      input-gain = -7.2;
      output-gain = 3.0;
      oversampling = "Half x4(3L)";
      release = 10.0;
      sidechain-input-device = "alsa_input.pci-0000_08_00.6.analog-stereo";
      threshold = -1.0;
    };

    "com/github/wwmm/easyeffects/streamoutputs/loudness/0" = {
      output-gain = 9.6;
    };

    "com/github/wwmm/easyeffects/streamoutputs/multibandcompressor/0" = {
      attack-threshold0 = -30.0;
      attack-threshold1 = -30.0;
      attack-threshold2 = -30.0;
      attack-threshold3 = -30.0;
      attack-time0 = 50.0;
      attack-time1 = 30.0;
      attack-time2 = 10.0;
      attack-time3 = 5.0;
      knee0 = -24.0;
      knee1 = -24.0;
      knee2 = -24.0;
      knee3 = -24.0;
      ratio0 = 1.7;
      ratio1 = 1.7;
      ratio2 = 1.7;
      ratio3 = 1.7;
      release-time0 = 600.0;
      release-time1 = 450.0;
      release-time2 = 250.0;
      sidechain-highcut-frequency0 = 250.0;
      sidechain-highcut-frequency1 = 1250.0;
      sidechain-highcut-frequency2 = 5000.0;
      sidechain-highcut-frequency3 = 20000.0;
      sidechain-input-device = "alsa_input.pci-0000_08_00.6.analog-stereo";
      sidechain-lowcut-frequency1 = 250.0;
      sidechain-lowcut-frequency2 = 1250.0;
      sidechain-lowcut-frequency3 = 5000.0;
      split-frequency1 = 250.0;
      split-frequency2 = 1250.0;
      split-frequency3 = 5000.0;
    };

    "com/github/wwmm/easyeffects/streamoutputs/stereotools/0" = {
      bypass = true;
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
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
      email = [ "<Super>e" ];
      home = [ "<Super>f" ];
      rotate-video-lock-static = [ ];
      screensaver = [ "<Super>Escape" ];
      terminal = [ "<Super>t" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
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

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "apps-menu@gnome-shell-extensions.gcampax.github.com" "tiling-assistant@leleat-on-github" "dash-to-dock@micxgx.gmail.com" ];
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "Vitals@CoreCoding.com" "no-overview@fthx" "clipboard-indicator@tudmotu.com" "extension-list@tu.berry" "pop-shell@system76.com" "supergfxctl-gex@asus-linux.org" ];
      favorite-apps = [ "firefox.desktop" "org.gnome.Calendar.desktop" "org.gnome.Nautilus.desktop" "org.gnome.Console.desktop" "code.desktop" ];
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
