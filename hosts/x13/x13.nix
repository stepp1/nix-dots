{ config, pkgs, ... }:

{
  hardware = {
    opengl.driSupport = true;
    bluetooth = {
      enable = true;
      powerOnBoot = false;
      disabledPlugins = [ "sap" ];
    };
    nvidia.prime = {
      offload.enable = true;
      amdgpuBusId = "PCI:8:0:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  services.xserver.layout = "us";
  services.xserver.xkbOptions = "compose:ralt";
  services.xserver.dpi = 192;
  services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.screenSection = ''
    Option         "metamodes" "nvidia-auto-select +0+0 {ForceFullCompositionPipeline=On}"
    Option         "AllowIndirectGLXProtocol" "off"
    Option         "TripleBuffer" "on"
  '';

  ## TOUCHPAD ##
  services.xserver.libinput = {
    enable = true;
  };

  udev = {
    extraRules = ''
      ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="amdgpu_bl1", MODE="0666", RUN+="${pkgs.coreutils}/bin/chmod a+w /sys/class/backlight/%k/brightness"
    '';
    extraHwdb = ''
      evdev:input:b0003v0B05p19B6*
        KEYBOARD_KEY_ff31007c=f20 # x11 mic-mute
    '';
    path = [
      pkgs.coreutils
    ];
  };
  services.logind.extraConfig = ''
    HandlePowerKey=hibernate
  '';
  environment = {
    etc = {
      "supergfxd.conf" = {
        mode = "0644";
        source = (pkgs.formats.json { }).generate "supergfxd.conf" {
          mode = "hybrid";
          vfio_enable = false;
          vfio_save = false;
          always_reboot = false;
          no_logind = false;
          logout_timeout_s = 180;
        };
      };
    };
  }
