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
    filelight
    discord
    autossh
  ];
  programs.noisetorch.enable = true;

  nixpkgs.overlays = [
    (self: super: {
      discord = super.discord.overrideAttrs
        (_: {
          src = builtins.fetchTarball {
            url = "https://discord.com/api/download?platform=linux&format=tar.gz";
            sha256 = "1z980p3zmwmy29cdz2v8c36ywrybr7saw8n0w7wlb74m63zb9gpi";
          };
        });
    })
  ];
  # Enable the OpenSSH daemon
  services.openssh = {
    enable = true;
    # Forbid root login through SSH.
    permitRootLogin = "no";
    # Use keys only. Remove if you want to SSH using password (not recommended)
    # passwordAuthentication = false;
  };


  environment.shells = with pkgs; [ zsh ];
  environment.variables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    HOST = "zen";
  };

  virtualisation = {
    podman = {
      enable = true;

      # Create a `docker` alias for podman, to use it as a drop-in replacement
      dockerCompat = true;

      # Required for containers under podman-compose to be able to talk to each other.
      defaultNetwork.dnsname.enable = true;
    };
  };
}
