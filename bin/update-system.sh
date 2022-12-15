#!/bin/sh
# Regarding performance of git-crypt operations:
# hyperfine --warmup 3 'git-crypt unlock; git-crypt lock -f'
# Benchmark 1: git-crypt unlock; git-crypt lock -f
#   Time (mean ± σ):     310.0 ms ±  20.9 ms    [User: 109.6 ms, System: 119.2 ms]
#   Range (min … max):   254.2 ms … 324.6 ms    10 runs
# 
# ==> git-crypt unlock; git-crypt lock -f;  Takes a maximum of 0.33s. 
# ==> I think that less than half a second is acceptable.

pushd ~/nix-dots
git-crypt unlock
sudo nixos-rebuild switch --flake .#$(hostname)
git-crypt lock -f
popd