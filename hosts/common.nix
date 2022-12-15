{ inputs, config, lib, pkgs, ... }:

{
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
    cached-nix-shell
    cachix
    zoom-us # covid :(
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
