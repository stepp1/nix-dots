{ config, pkgs, ... }: {
  # check https://openzfs.github.io/openzfs-docs/Getting%20Started/NixOS/index.html
  boot.supportedFilesystems = [ "zfs" ];
  networking.hostId = "07775a6c";
}
