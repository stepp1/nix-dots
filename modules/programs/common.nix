{ config, pkgs, self, ... }:

{
  imports = [ ./zsh.nix ./dconf.nix ./git.nix ];
  programs = {
    home-manager.enable = true;
    gpg.enable = true;
    htop.enable = true;
  };
}
