# Edit this configuration file to define what should be installed on 
# your system.  Help is available in the configuration.nix(5) man page 
# and in the NixOS manual (accessible by running ‘nixos-help’).
# https://gist.github.com/martijnvermaat/76f2e24d0239470dd71050358b4d5134
# https://gist.github.com/ladinu/bfebdd90a5afd45dec811296016b2a3f

{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./zfs.nix
      ./x13.nix
      ../default.nix
      ../gnome.nix
      ./power.nix
    ];
  # boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelPackages = config.boot.zfs.package.latestCompatibleLinuxPackages;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 8;
  boot.loader.efi.canTouchEfiVariables = true;
  # boot.zfs.extraPools = [ "MyData" ];

  networking.hostName = "x13";
  sound.enable = true;
  services.touchegg.enable = true;
  nixpkgs.overlays = [
    (self: super: {
      discord = super.discord.overrideAttrs
        (_: {
          src = builtins.fetchTarball {
            url = "https://discord.com/api/download?platform=linux&format=tar.gz";
            sha256 = "1z980p3zmwmy29cdz2v8c36ywrybr7saw8n0w7wlb74m63zb9gpi";
          };
        });
    })
  ];

  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    powertop
    gnome.gnome-power-manager
    gnomeExtensions.cpu-power-manager
    gnomeExtensions.appindicator
    gnomeExtensions.supergfxctl-gex
    asusctl
    filelight
    # distrobox
    touchegg
    easyeffects

    chromium # for google meets :/
  ];

  ## must be at the end! or it can cause race problems w/ zfs & udev
  boot.initrd.luks.devices."root" = {
    #name = "root";
    device = "/dev/disk/by-uuid/0d934a78-c005-4fbb-8cb5-3b4deb360aee";
    preLVM = true;
    allowDiscards = true;
  };
  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}

