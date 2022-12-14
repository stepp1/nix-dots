{ config, pkgs, self, ... }:

{
  imports = [ ./zsh.nix ];
  programs = {
    home-manager.enable = true;
    gpg.enable = true;
  };
}
