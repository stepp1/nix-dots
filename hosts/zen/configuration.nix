{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./zfs.nix
      ../hosts.nix
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

  # Configure keymap in X11
  nixpkgs.config.allowUnfree = true; # make sure...
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = false;
    desktopManager.gnome.enable = true;
    xserver.videoDrivers = [ "nvidia" ];

    layout = "us";
    xkbVariant = "";
    xkbOptions = "compose:ralt";
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.step = {
    isNormalUser = true;
    description = "step";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      # productivity
      firefox
      tdesktop
      whatsapp-for-linux

      # dev
      vscode.fhs
      conda
      black
    ];
  };

  hardware.opengl.enable = true;

  # $ nix search wget
  environment.shells = with pkgs; [ zsh ];
  environment.variables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    HOST = "zen";
  };

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

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}
