#!/bin/sh 
pushd ~/nix-dots
sudo nixos-rebuild switch -I nixos-config=./nixos/configuration.nix
popd