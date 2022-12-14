# My NixOS configuration

## Installation 

```bash
git clone https://github.com/stepp1/nix-dots.git nix-dots
```

## Updating and (Re-)Building

```bash
cd nix-dots
# Update packages and lock file (optional)
nix flake update & nix flake lock
# On future updates just run the `update-flake` commmand

# Update config
sudo nixos-rebuild switch --flake .#

# On future updates just run the `update` commmand
```
## Related
- How to manage secrets (e.g. ssh keys)? See [SECRETS.md](SECRETS.md)
