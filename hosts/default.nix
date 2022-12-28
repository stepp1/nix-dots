{ inputs, config, lib, pkgs, ... }:

{
  imports = [
    ./base.nix
  ];

  environment.systemPackages = with pkgs; [
    # system
    vim
    wget
    # git
    xsel
    xclip
    home-manager
    nixpkgs-fmt
    zip
    unzip
    cached-nix-shell
    cachix
    zoom-us # covid :(
    filelight
    discord
  ];
  programs.noisetorch.enable = true;
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
  # Enable the OpenSSH daemon
  services.openssh = {
    enable = true;
    # Forbid root login through SSH.
    permitRootLogin = "no";
    # Use keys only. Remove if you want to SSH using password (not recommended)
    # passwordAuthentication = false;
  };
}
