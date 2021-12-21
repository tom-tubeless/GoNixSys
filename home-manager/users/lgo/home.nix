{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "lgo";
  home.homeDirectory = "/home/lgo";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  programs = { 
    dircolors.enable = true;
    gpg.enable = true;

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

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
