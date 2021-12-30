{ config, pkgs, ... }:

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

        fprintd = {
            enable = true;
            tod.enable = true;
            tod.driver = pkgs.libfprint-2-tod1-goodix;
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
      calibre
      kcalc
      keepassxc
      kmail
      kontact
      krunner-pass
      krunner-symbols
      libsForQt5.bismuth
      libsForQt5.bluez-qt
      libsForQt5.breeze-gtk
      libsForQt5.calindori
      libsForQt5.kauth
      libsForQt5.kdeconnect-kde
      libsForQt5.kdeplasma-addons
      libsForQt5.krunner-symbols
      libsForQt5.kwallet-pam
      libsForQt5.parachute
      libsForQt5.plasma-disks
      libsForQt5.polkit-qt
      libsForQt5.qtstyleplugin-kvantum
      nextcloud-client
      nordic
      plasma-applet-virtual-desktop-bar
      plasma-browser-integration
      plasma-nm
      plasma-pa
      plasma-thunderbolt
      redshift-plasma-applet
      sddm-kcm
      vscodium
  ];

#  programms.nm-applet.enable = true;

#  services.pipewire = {
#    enable = true;
#    alsa.enable = true;
#    alsa.support32Bit = true;
#    pulse.enable = true;
#  };
}
