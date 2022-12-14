{
  description = "My Nix Config flake";

  inputs = {
    #nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    home-manager.url = "github:nix-community/home-manager/release-22.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      user = "step";

      nixos-sys = nixpkgs.lib.nixosSystem;
      hm-conf = home-manager.lib.homeManagerConfiguration;
    in
    {
      nixosConfigurations = {
        zen = nixos-sys {
          specialArgs = { inherit inputs; }; # Pass flake inputs to our config
          # > Our main nixos configuration file <
          modules = [ ./hosts/zen/configuration.nix ];
        };
      };
      homeConfigurations = {
        ${user} = hm-conf {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config
          # > Our main home-manager configuration file <
          modules = [ ./home.nix ];
        };
      };
    };
}
