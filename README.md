# My NixOS configuration

## Installation 

```bash
git clone https://github.com/stepp1/nix-dots.git nix-dots
ln -s ~/nix-dots/ ~/.config/nixpkgs
sudo ln -s ~/nix-dots/nixos /etc/nixos 
```

## Update

```bash
# Update the user config
./scripts/update-users.sh
./scripts/apply-users.sh
# On future updates just run the `update-hm` commmand

# Update the system config (will ask for sudo passwd)
./scripts/update-system.sh
./scripts/apply-system.sh

# On future updates just run the `update` commmand
```

## GPG and Git-Crypt

**Store the keys in a safe place.**

- **GPG key generation**
```bash
# Generate a new key
gpg --full-generate-key 
# List keys
gpg --list-secret-keys 
# Export the public key
gpg --output ../public.gpg --armor --export sfaragg@gmail.com
# Export the private key
gpg --output ../public.gpg --armor --export-secret-keys sfaragg@gmail.com
# Trust the key
gpg --edit-key # Trust level 5
```

- **Git-Crypt key generation**
```bash
# Generate a new key
git-crypt init
# Add the key to the repo
git-crypt add-gpg-user sfaragg@gmail.com
# Export the key
git-crypt export-key ../git-crypt.key
```

- **Committing + Lock and Unlock**
```bash
# Always unlock before commiting
git-crypt unlock 
# Do some stuff
...
# git add, commit
git add file1 file2
git commit -m "..."

# Lock after commiting
git-crypt lock 
```