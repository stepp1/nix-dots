{ inputs, lib, config, pkgs, home-manager, ... }:
let
  mnt-home = "/mnt/data/home";
  host = config.networking.hostName;
in
{
  imports = [
    ./modules
  ];

  home = {
    username = "step";
    homeDirectory = "/home/step";
    packages = with pkgs; [
      git
      tree
      htop
      tmux
      ranger
      neovim
      gnupg
      git-crypt
      pinentry-gnome
      dconf
    ];
    file = {
      Documents.source = config.lib.file.mkOutOfStoreSymlink "${mnt-home}/Documents";
      Documents.target = "Documents";
      Personal.source = config.lib.file.mkOutOfStoreSymlink "${mnt-home}/Personal";
      Personal.target = "Personal";
      Code.source = config.lib.file.mkOutOfStoreSymlink "${mnt-home}/Code";
      Code.target = "Code";
      ".condarc".text = ''
        channels:
          - conda-forge
      '';
    };
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
  home.stateVersion = "22.11";
}

