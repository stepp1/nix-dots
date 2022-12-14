#!/bin/sh 
host=$(hostname)
pushd ~/nix-dots
nix flake update & nix flake lock

sleep 0.5;
sudo nixos-rebuild switch --flake .#
popd