#!/bin/sh 
pushd ~/nix-dots
./scripts/update-nixos.sh & ./scripts/apply-nixos.sh
popd 