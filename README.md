# My NixOS configuration

## Installation 

```bash
git clone https://github.com/stepp1/nix-dots.git nix-dots
```

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

## Related
- How to manage secrets (e.g. ssh keys)? See [SECRETS.md](SECRETS.md)
