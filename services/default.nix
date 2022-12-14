{ config, pkgs, ... }:

{
  services = {
    gpg-agent = {
      enable = true;
      defaultCacheTtl = 60 * 60 * 24 * 7;
      maxCacheTtl = 60 * 60 * 24 * 7;
    };
    # Enable the OpenSSH daemon (for all hosts)
    openssh = {
      enable = true;
      # Forbid root login through SSH.
      permitRootLogin = "no";
      # Use keys only. Remove if you want to SSH using password (not recommended)
      # passwordAuthentication = false;
    };
  };
}
