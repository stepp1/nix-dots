# /bin utilities

This directory contains a number of utilities that are used to build and update NixOS.

## Building System
```bash
cd nix-dots
# Update config
sudo nixos-rebuild switch --flake .#
# On future updates just run the `update` commmand
```


## Updating Packages
```bash
cd nix-dots
# Update packages and lock file 
nix flake update & nix flake lock
# On future updates just run the `update-pkgs` commmand
```

## Using `hey`

```bash
hey --help
```