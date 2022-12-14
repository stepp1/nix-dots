{ config, pkgs, ... }:

{
  imports = [
    ./base.nix # base config: LOCALE, TIMEZONE, SOUND, NIX cfg, etc.
    ./common.nix # common config: bare minimum pkgs, etc.
  ];
}
