{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib
    in {
    nixosConfigurations = {
      lugnuts = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./lugnuts/configuration.nix ];
      };
    };
  };
}