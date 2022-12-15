git #!/bin/sh 
pushd ~/nix-dots
git-crypt unlock
sudo nixos-rebuild switch --flake .#$(hostname)
git-crypt lock
popd