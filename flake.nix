{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    #nur.url = "github:nix-community/NUR";
  };

  outputs = { nixpkgs, nixpkgs-unstable, nixos-hardware, ... }: {
    nixosConfigurations = {
      testbox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ({ config, pkgs, ... }:
            let
              overlay-unstable = final: prev: {
                unstable = nixpkgs-unstable.legacyPackages.x86_64-linux;
              };
            in
            {
              nixpkgs.overlays = [ overlay-unstable ];

              imports =
                [
                  ./system/hardware-configuration.nix
                  ./system/configuration.nix
                ];
              networking = {
                hostName = "testbox";
              };
            }
          )
        ];
      };
      reiner = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          nixos-hardware.nixosModules.dell-xps-15-9500-nvidia
          #{ nixpkgs.overlays = [ nur.overlay ]; }
          #({ pkgs, ... }:
          #let
          #  nur-no-pkgs = import nur {
          #    nurpkgs = import nixpkgs { system = "x86_64-linux"; };
          #  };
          #in {
          #  imports = [ nur.repos.mic92.hello-nur ];
          #})
          ({ config, pkgs, ... }:
            let
              overlay-unstable = final: prev: {
                unstable = nixpkgs-unstable.legacyPackages.x86_64-linux;
              };
            in
            {
              nixpkgs.overlays = [
                overlay-unstable
              ];

              imports =
                [
                  # ./system/hardware-configuration.nix
                  ./system/configuration.nix
                ];
              networking = {
                hostName = "reiner";
              };
            }
          )
        ];
      };
    };
  };
}
