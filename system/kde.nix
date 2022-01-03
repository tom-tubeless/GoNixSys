{ config, pkgs, ... }:

# let
#   Inkscape-NVIDIADesktopItem = pkgs.makeDesktopItem {
#     name = "inkscape-nvidia";
#     desktopName = "Inkscape NVIDIA";
#     exec = "${vpnScript}/bin/inkscape";
#     terminal = "true";
#   };
# in

{
  services = {
    xserver = {
      enable = true;
      displayManager = {
        sddm.enable = true;
        sddm.settings.Wayland.SessionDir = "${pkgs.plasma5Packages.plasma-workspace}/share/wayland-sessions";
        autoLogin.enable = true;
        autoLogin.user = "lgo";
        };
      desktopManager.plasma5 = {
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

    geoclue2.appConfig.redshift.isAllowed = true;

    redshift = {
      enable = true;
      brightness = {
        # Note the string values below.
        day = "1";
        night = "1";
      };
      temperature = {
        day = 5500;
        night = 3700;
      };
    };
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

  environment.systemPackages = with pkgs; [
    ark
    bluedevil
    bottles
    calibre
    kcalc
    keepassxc
    kmail
    kontact
    krename
    krunner-pass
    krunner-symbols
    latte-dock
    libsForQt5.bismuth
    libsForQt5.bluez-qt
    libsForQt5.breeze-gtk
    libsForQt5.kaddressbook
    libsForQt5.kauth
    libsForQt5.kdeconnect-kde
    libsForQt5.kdeplasma-addons
    libsForQt5.keysmith
    libsForQt5.kleopatra
    libsForQt5.kontact
    libsForQt5.korganizer
    libsForQt5.krunner-symbols
    libsForQt5.kwallet-pam
    libsForQt5.plasma-disks
    libsForQt5.polkit-qt
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.sonnet
    nextcloud-client
    nordic
    partition-manager
    plasma-applet-virtual-desktop-bar
    plasma-browser-integration
    plasma-nm
    plasma-pa
    plasma-thunderbolt
    redshift-plasma-applet
    redshift-wlr
    sddm-kcm
    vlc
    vscodium
    whitesur-gtk-theme
    whitesur-icon-theme
    zafiro-icons
    zanshin
  ];

location.provider = "geoclue2";

users.users.lgo.extraGroups = [ "flatpak" ];

xdg.portal.enable = true;

#  programms.nm-applet.enable = true;

#  services.pipewire = {
#    enable = true;
#    alsa.enable = true;
#    alsa.support32Bit = true;
#    pulse.enable = true;
#  };
}
