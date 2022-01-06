{ config, pkgs, ... }:

{

  imports = [
    ../../services/nixos-hm-auto-update.nix
    #../../services/nixos-vscode-ssh-fix.nix
    ./dotfiles/brave.nix
    ./dotfiles/gnome.nix
  ];

  home.username = "lgo";
  home.homeDirectory = "/home/lgo";

  home.stateVersion = "21.11";

  fonts.fontconfig.enable = true;

    # nixpkgs.config.packageOverrides = pkgs: {
    #     nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
    #       inherit pkgs;
    #     };
    # };

  home.packages = with pkgs; [
    gimp-with-plugins
    git
    git-crypt
    gnupg
    inkscape-with-extensions
    libreoffice-fresh
    keepassxc
    nextcloud-client
  ];

  programs = { 
    dircolors.enable = true;

    direnv = {
      enable = true;
      nix-direnv = {
        enable = true;
        enableFlakes = true;
      };
    };

    git = {
      enable = true;
      userName  = "tom-tubeless";
      userEmail = "lutz.tomala@gmail.com";
    };

    gpg.enable = true;

    home-manager.enable = true;
  };

#   environment.etc."xdg/user-dirs.defaults".text = ''
#     DESKTOP=system/desktop
#     DOWNLOAD=downloads
#     TEMPLATES=system/templates
#     PUBLICSHARE=system/public
#     DOCUMENTS=documents
#     MUSIC=media/music
#     PICTURES=media/photos
#     VIDEOS=media/video
#   '';


  services = {
    gpg-agent = {
      enable = true;
      enableSshSupport = true;
    };
    #nixos-vscode-ssh-fix.enable = true;
  };
}
