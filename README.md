# My NixOS configuration

## Installation 

```bash
git clone https://github.com/stepp1/nix-dots.git nix-dots
cd nix-dots

chmod +x ./bin/update.sh

# check that hostname and $USER exist in flakes.nix and hosts/
./update.sh
```

## Structure

```
.
├── bin
│   ├── hey
│   ├── README.md
│   ├── update.sh
│   ├── update-system.sh
│   ├── update-user.sh
│   └── update-versions.sh
├── flake.lock
├── flake.nix       # defines nixosConfigurations and homeConfigurations
├── home.nix        # one user to rule them all
├── hosts           # currently defined hosts
│   ├── base.nix    # base configuration: nix, nixpkgs, some basic services, locale, etc.
│   ├── common.nix  # commong packages and services
│   ├── default.nix # imports
│   ├── ids
│   ├── x13
│   └── zen
│       ├── configuration.nix   # defines boot, network, xserver, user, **nix only** packages/programs
│       ├── hardware-configuration.nix
│       ├── README.md
│       └── zfs.nix
├── INSTALL.md
├── LICENSE
├── modules  # programs and services managed by home-manager
│   ├── default.nix
│   ├── modules.nix
│   ├── programs
│   │   ├── common.nix
│   │   ├── default.nix
│   │   ├── git.nix
│   │   └── zsh.nix
│   └── services
│       └── default.nix
├── README.md  # this file
└── SECRETS.md # instructions on how to manage secrets 
```


## Related
- How to manage secrets (e.g. ssh keys)? See [SECRETS.md](SECRETS.md)
