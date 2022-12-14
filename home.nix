{ inputs, lib, config, pkgs, ... }:
{
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true); #  https://github.com/nix-community/home-manager/issues/2942
    };
  };

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
      gnomeExtensions.pop-shell
    ];

  };

  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userName = "Stepp1";
      userEmail = "sfaragg@gmail.com";
    };
    gpg.enable = true;
    #    steam.enable = true;
    zsh = {
      enable = true;
      autocd = true;

      shellAliases = {
        ll = "ls -l";
        update = "sudo nixos-rebuild switch";
        generations = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";
        vi = "nvim";
        vim = "nvim";
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
  };

  services.gpg-agent = {
    enable = true;
  };

  # release: https://nix-community.github.io/home-manager/release-notes.html
  home.stateVersion = "22.05";
}
