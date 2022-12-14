#!/bin/sh 
pushd ~/nix-dots
home-manager switch --flake .#$USER
popd