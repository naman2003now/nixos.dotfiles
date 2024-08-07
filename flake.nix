{
  description = "NixOS configuration";

  inputs = {
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-fork.url = "github:naman2003now/nixpkgs/master";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    myecho.url = "github:naman2003now/myecho";
    dwm.url = "github:naman2003now/dwm-config";
  };

  outputs = inputs@{ nixpkgs, nixpkgs-unstable, nixpkgs-fork, home-manager, ... }: rec {
    formatter."x86_64-linux" = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
    system = "x86_64-linux";
    pkgs-unstable = import nixpkgs-unstable { inherit system; config.allowUnfree = true; };
    pkgs-fork = import nixpkgs-fork { inherit system; config.allowUnfree = true; };
    pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit pkgs; inherit pkgs-unstable; inherit inputs; inherit pkgs-fork; };
        modules = [
          ./core
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; inherit pkgs; inherit pkgs-unstable; inherit pkgs-fork; };
            home-manager.users.naman = import ./home;
          }
        ];
      };
    };
  };
}
