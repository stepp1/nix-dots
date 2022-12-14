#!/bin/sh 
pushd ~/nix-dots
./scripts/update-nixos.sh && ./scripts/update-users.sh
./scripts/apply-nixos.sh && ./scripts/apply-users.sh
popd 