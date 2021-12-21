{ config, pkgs, ... }:

{

  imports = [
    ../../services/nixos-hm-auto-update.nix
  ];

  home.username = "lgo";
  home.homeDirectory = "/home/lgo";

  home.stateVersion = "21.11";

  fonts.fontconfig.enable = true;

  programs = { 
    dircolors.enable = true;
    gpg.enable = true;
    home-manager.enable = true;

    direnv = {
      enable = true;
      nix-direnv = {
        enable = true;
        enableFlakes = true;
      };
    };
  };

  services = {
      gpg-agent = {
        enable = true;
        enableSshSupport = true;
      };
  };

  home.packages = with pkgs; [
      git
      git-crypt
      gnupg
  ];
}
