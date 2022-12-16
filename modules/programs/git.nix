{ pkgs, lib, config, ... }:

{
  programs.git = {
    enable = true;
    userName = "Stepp1";
    userEmail = "sfaragg@gmail.com";
    extraConfig = {
      pull.rebase = false;
      init = { defaultBranch = "master"; };
    };
  };
}
