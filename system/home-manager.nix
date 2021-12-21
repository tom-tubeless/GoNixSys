{ config, pkgs, ... }:

#let
#  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
#in

{
  imports = [
    (import "github:nix-community/home-manager")
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.lgo = {
    /* Here goes your home-manager config, eg home.packages = [ pkgs.foo ]; */
    home.packages = with pkgs; [
        git
        git-crypt
        gnupg
    ];
    programs.zsh = {
        enable = true;
        shellAliases = {
            ll = "ls -l";
            update = "sudo nixos-rebuild switch";
        };
        history = {
        size = 10000;
        };
    };
  };
}
