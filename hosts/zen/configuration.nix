{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./zfs.nix
      ../default.nix
      ../gnome.nix
    ];

  # Bootloader.
  boot =
    {
      loader.systemd-boot.enable = true;
      loader.efi.canTouchEfiVariables = true;
      loader.efi.efiSysMountPoint = "/boot/efi";
      zfs.extraPools = [ "MyData" ];
    };

  networking.hostName = "zen";
  networking.wireless.enable = false; # Enables wireless support via wpa_supplicant.

  nixpkgs.config.allowUnfree = true; # make sure...

  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
    layout = "us";
    xkbVariant = "";
    xkbOptions = "compose:ralt";
  };
  hardware.opengl.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  programs = {
    steam.enable = true;
    gamemode.enable = true;
    neovim.enable = true;
    neovim.defaultEditor = true;
  };

  # Fonts
  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "Hack" ]; })
  ];
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
  system.userActivationScripts = {
    # symlink .ssh/directory
    ssh-dir =
      ''
        # assumes unlocked git-crypt
        # /home/step/.ssh/ exists, then exit
        if [ -d /home/step/.ssh/ ]; then echo ".ssh exists!"; exit; fi

        echo "copying .ssh"
        mkdir -p /home/step/.ssh
        cp /home/step/nix-dots/.secrets/zen/ssh/* /home/step/.ssh/
        chown -R step:users /home/step/.ssh
     
        echo "Must set permissions! Run:"
        echo "chmod 600 /home/step/.ssh/*"
        echo "chmod 700 /home/step/.ssh"
      '';
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}


