{
  description = "Home Manager NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/release-21.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
#    nur.url = github:nix-community/NUR;
  };
  outputs = inputs@{ self, nixpkgs, nixpkgs-unstable, home-manager, nur, ... }:
    {
      homeConfigurations = {
        lgo = inputs.home-manager.lib.homeManagerConfiguration {
          system = "x86_64-linux";
          homeDirectory = "/home/lgo";
          username = "lgo";
          stateVersion = "21.11";
          configuration = { config, pkgs, ... }:
            let
              overlay-unstable = final: prev: {
                unstable = inputs.nixpkgs-unstable.legacyPackages.x86_64-linux;
 #               nur = inputs.nur {inherit pkgs;};
              };
            in
            {
              nixpkgs.overlays = [
                overlay-unstable
#                nur.repos.mic92.hello-nur
              ];
              nixpkgs.config = {
                allowUnfree = true;
                allowBroken = true;
              };

              imports = [
                ./users/lgo/home.nix
              ];
            };
        };
      };
          lgo = self.homeConfigurations.lgo.activationPackage;
          defaultPackage.x86_64-linux = self.lgo;
    };
}
