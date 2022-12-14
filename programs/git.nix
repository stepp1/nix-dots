{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Stepp1";
    userEmail = "sfaragg@gmail.com";
  };
  extraConfig = {
    commit.verbose = true;
    init.defaultBranch = "master";
    pull.rebase = "true";
  };
}
