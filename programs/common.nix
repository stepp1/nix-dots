{ config, pkgs, self, ... }:

{
  imports = [ ./zsh.nix ./git.nix ];
  programs = {
    home-manager.enable = true;
    gpg.enable = true;
  };
}
