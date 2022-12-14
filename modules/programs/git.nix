{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Stepp1";
    userEmail = "sfaragg@gmail.com";
  };
}
