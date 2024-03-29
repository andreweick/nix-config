{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    atuin.url = "github:atuinsh/atuin";
  };

  outputs = { self, nixpkgs, atuin, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      lugnuts = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
      };
    };
  };
}
