{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;

    shellAliases = {
      ll = "ls -l";
      update = "~/nix-dots/bin/update.sh";
      update-pkgs = "~/nix-dots/bin/update-pkgs.sh";
      hey = "~/nix-dots/bin/hey.sh";
      generations = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";
      vi = "nvim";
      vim = "nvim";
      dots = "cd ~/nix-dots";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
    enableSyntaxHighlighting = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    completionInit = "autoload -U compinit && compinit";
  };
}
