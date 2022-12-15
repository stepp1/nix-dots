{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;

    shellAliases = {
      ll = "ls -l";
      update = "~/nix-dots/bin/update.sh";
      update-user = "~/nix-dots/bin/update-user.sh";
      update-system = "~/nix-dots/bin/update-system.sh";
      update-versions = "~/nix-dots/bin/update-versions.sh";
      hey = "~/nix-dots/bin/hey";
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
