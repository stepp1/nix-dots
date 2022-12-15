git #!/bin/sh 
pushd ~/nix-dots
sudo nixos-rebuild switch --flake .#$(hostname)
popd