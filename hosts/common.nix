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
  ];
}
