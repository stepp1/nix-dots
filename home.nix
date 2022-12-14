{ inputs, lib, config, pkgs, ... }:

{
  imports = [
    ./modules
  ];

  home = {
    username = "step";
    homeDirectory = "/home/step";
    packages = with pkgs; [
      # general
      tree
      htop
      tmux
      ranger
      neovim
      gnupg
      git-crypt
      pinentry-gnome

      # gnome
      gnome.gnome-tweaks
      dconf
      gnome.dconf-editor
    ];
  };

  xdg = {
    userDirs = {
      enable = true;
      desktop = "\$HOME/";
      documents = "\$HOME/Documents";
      download = "\$HOME/Downloads";
      music = "\$HOME/";
      templates = "\$HOME/";
      pictures = "\$HOME/";
      videos = "\$HOME/";

    };
  };

  # release: https://nix-community.github.io/home-manager/release-notes.html
  home.stateVersion = "22.05";
}
