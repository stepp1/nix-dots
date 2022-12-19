# My NixOS configuration

## Installation 

```bash
git clone https://github.com/stepp1/nix-dots.git nix-dots
cd nix-dots

chmod +x ./bin/update.sh

# check that hostname and $USER exist in flakes.nix and hosts/
./update.sh
```

## Status

- [x] Flake support
- [x] Custom scripts for updating
- [x] Gnome desktop
- [x] ZFS disks 
- [ ] BSPWM desktop
- [x] Asus X13 configuration: asusctl, power management, etc.
- [ ] IDS workstation configuration: similar to zen host, maybe only change disks?

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


## References
- How to manage secrets (e.g. ssh keys)? See [SECRETS.md](SECRETS.md)
- HomeManager Manual: https://rycee.gitlab.io/home-manager/ (See 3.3. NixOS module) 
- Some dots, flakes that I used or got inspired by:
    - https://github.com/gvolpe/dconf2nix
    - https://github.com/hlissner/dotfiles
    - https://github.com/chayward1/dotfiles
    - https://github.com/notusknot/dotfiles-nix
    - many others that I could'nt keep that...