#!/bin/sh
pushd ~/nix-dots
./scripts/update-users.sh
./scripts/apply-users.sh
popd