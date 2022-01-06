{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      displayManager = {
        gdm.enable = true;
        autoLogin.enable = true;
        autoLogin.user = "lgo";
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
      gnome3.gnome-settings-daemon
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
      };
  };

  environment.gnome.excludePackages = with pkgs.gnome; [
    atomix
    gnome-characters
    gnome.geary
    gnome-music
    gnome-photos 
    gnome.totem
    gnome-tour
    hitori
    iagno
    tali
    ];

  environment.systemPackages = with pkgs; [
    gnomeExtensions.appindicator
    texlive.combined.scheme-full
    vlc
    vscodium
    vscode-extensions.valentjn.vscode-ltex
    whitesur-gtk-theme
    whitesur-icon-theme
    zafiro-icons
  ];

users.users.lgo.extraGroups = [ "flatpak" ];

xdg.portal.enable = true;
}
