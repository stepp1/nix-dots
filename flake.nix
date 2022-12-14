{
  description = "My Nix Config flake";

  inputs = {
    #nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    home-manager.url = "github:nix-community/home-manager/release-22.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { nixpkgs, home-manager, ... }@attrs:
    let
      system = "x86_64-linux";
      user = "step";
      hostname = "step-nixos";
      lib = nixpkgs.lib;
      hm-lib = home-manager.lib;
    in
    {
      nixosConfigurations = {
        "${hostname}" = lib.nixosSystem {
          specialArgs = attrs; # Pass flake inputs to our config
          # > Our main nixos configuration file <
          modules = [ ./nixos/configuration.nix ];
        };
      };
      homeConfigurations = {
        "${user}@${hostname}" = hm-lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          extraSpecialArgs = attrs; # Pass flake inputs to our config
          # > Our main home-manager configuration file <
          modules = [ ./home.nix ];
        };
      };
    };
}
