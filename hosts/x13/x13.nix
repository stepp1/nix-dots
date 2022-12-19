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
}
