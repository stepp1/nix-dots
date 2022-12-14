{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./zfs.nix
      ./base.nix
    ];

  # Bootloader.
  boot =
    {
      loader.systemd-boot.enable = true;
      loader.efi.canTouchEfiVariables = true;
      loader.efi.efiSysMountPoint = "/boot/efi";
      zfs.extraPools = [ "MyData" ];
    };

  networking.hostName = "step-nixos";
  networking.wireless.enable = false; # Enables wireless support via wpa_supplicant.


  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = false;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
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
      firefox
      tdesktop
      #  thunderbird
    ];
  };

  # Allow unfree packages / NVIDIA
  nixpkgs.config.allowUnfree = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.opengl.enable = true;

  # $ nix search wget
  environment.shells = with pkgs; [ zsh ];
  environment.variables.EDITOR = "nvim";
  environment.systemPackages = with pkgs; [
    # system
    vim
    wget
    git
    xsel
    xclip
    home-manager
    nixpkgs-fmt
    zip

    # code
    vscode.fhs
    conda
    black
  ];

  programs = {
    steam.enable = true;
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

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    # Forbid root login through SSH.
    permitRootLogin = "no";
    # Use keys only. Remove if you want to SSH using password (not recommended)
    passwordAuthentication = false;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}
