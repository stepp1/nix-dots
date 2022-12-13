#!/bin/sh 
pushd ~/nix-dots
home-manager switch -f ./home.nix
popd