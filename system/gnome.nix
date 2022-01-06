{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      displayManager = {
        gdm.enable = true;
        gdm.walynad = true;
        gdm.nvidiaWayland = true;
        #autoLogin.enable = true;
        #autoLogin.user = "lgo";
        };
      desktopManager.gnome = {
        enable = true;
      };
      layout = "de";
    };

    flatpak.enable = true;

    fprintd = {
      enable = true;
      tod.enable = true;
      tod.driver = pkgs.libfprint-2-tod1-goodix;
    };

    udev.packages = with pkgs; [
      dconf
      gnome.gnome-settings-daemon
    ];
  };

  networking = {
    networkmanager = {
      enable = true;
    };
  };

  security = {
      rtkit.enable = true;
      pam.services = {
        login.fprintAuth = true;
        xlock.fprintAuth = true;
        xscreensaver.fprintAuth = true;
        gdm.enableGnomeKeyring = true;
      };
  };

  environment.gnome.excludePackages = with pkgs; [
    gnome.atomix
    gnome.gedit
    gnome.gnome-characters
    gnome.gnome-maps
    gnome.gnome-music
    gnome.gnome-software
    gnome.gnome-weather
    gnome.hitori
    gnome.iagno
    gnome.tali
    gnome.totem
    gnome-photos 
    gnome-tour
    gnome-user-docs
    xterm
    ];

  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnomeExtensions.appindicator
    texlive.combined.scheme-full
    vlc
  ];

users.users.lgo.extraGroups = [ "flatpak" ];

xdg.portal.enable = true;
}
