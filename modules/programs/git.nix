{ pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.git;

in {
  options.modules.git = { enable = mkEnableOption "git"; };
  config = mkIf cfg.enable {
    programs.git = {
      enable = true;
      userName = "Stepp1";
      userEmail = "sfaragg@gmail.com";
      extraConfig = {
        pull.rebase = false;
        init = { defaultBranch = "master"; };
      };
    };
  };
}
