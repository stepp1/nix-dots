{ inputs, config, lib, pkgs, ... }:

{
  imports = [
    ./base.nix
  ];

  users.users.step = {
    isNormalUser = true;
    description = "step";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      thunderbird
      tdesktop
      discord

      # dev
      vscode.fhs
      conda
      black
    ];
  };

  environment.systemPackages = with pkgs; [
    # system
    vim
    wget
    xsel
    xclip
    home-manager
    nixpkgs-fmt
    zip
    unzip
    cached-nix-shell
    cachix
    zoom-us # covid :(
  ];

  # Enable the OpenSSH daemon
  services.openssh = {
    enable = true;
    # Forbid root login through SSH.
    permitRootLogin = "no";
    # Use keys only. Remove if you want to SSH using password (not recommended)
    # passwordAuthentication = false;
  };
  programs.noisetorch.enable = true;

  environment.shells = with pkgs; [ zsh ];
  environment.variables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    HOST = "zen";
  };
}
