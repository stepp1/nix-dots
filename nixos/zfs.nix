{ config, pkgs, ... }: { 
  boot.supportedFilesystems = [ "zfs" ];
  networking.hostId = "5df9bf34";
}
