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
├── flake.nix       # defines inputs and nixosConfigurations
├── home.nix        # one user to rule them all
├── hosts           # my hosts
│   ├── base.nix    # base configuration: nix, nixpkgs, some basic services, locale, etc.
│   ├── default.nix # default configurations: common packages, services, etc.
│   ├── gnome.nix   # gnome desktop
│   ├── ids
│   │   └── README.md
│   ├── x13
│   │   ├── configuration.nix
│   │   ├── hardware-configuration.nix
│   │   ├── power.nix # power management
│   │   ├── README.md
│   │   ├── x13.nix   # x13 specific
│   │   └── zfs.nix   # zfs partition
│   └── zen
│       ├── configuration.nix
│       ├── hardware-configuration.nix
│       ├── README.md
│       └── zfs.nix   # zfs partition
├── INSTALL.md
├── LICENSE
├── modules  # programs and services managed by home-manager
│   ├── default.nix
│   ├── modules.nix
│   ├── programs
│   │   ├── dconf.nix
│   │   ├── default.nix
│   │   ├── git.nix
│   │   └── zsh.nix
│   └── services
│       └── default.nix
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