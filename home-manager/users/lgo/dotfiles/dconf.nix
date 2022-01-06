# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

let
  mkTuple = lib.hm.gvariant.mkTuple;
in
{
  dconf.settings = {
    "com/gexperts/Tilix" = {
      auto-hide-mouse = true;
      terminal-title-style = "small";
      theme-variant = "dark";
      use-overlay-scrollbar = false;
      use-tabs = true;
      window-style = "normal";
    };

    "com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d" = {
      background-color = "#2E3440";
      background-transparency-percent = 2;
      badge-color-set = false;
      bold-color-set = false;
      cursor-colors-set = false;
      cursor-shape = "ibeam";
      # font = "'FuraCode Nerd Font Mono 11'";
      foreground-color = "#D8DEE9";
      highlight-colors-set = false;
      palette = [ "#2E3440" "#BF616A" "#A3BE8C" "#EBCB8B" "#81A1C1" "#B48EAD" "#88C0D0" "#D8DEE9" "#3B4252" "#BF616A" "#A3BE8C" "#EBCB8B" "#81A1C1" "#B48EAD" "#88C0D0" "#ECEFF4" ];
      terminal-bell = "none";
      use-system-font = true;
      use-theme-colors = false;
      visible-name = "Default";
    };

    "org/gnome/Connections" = {
      first-run = false;
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/calendar" = {
      active-view = "month";
      window-maximized = false;
      window-position = mkTuple [ 45 29 ];
      window-size = mkTuple [ 948 1156 ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Time" "Office" "Development" "Video" "Sync" "Helper" "Settings" "Manual" "Graphic" ];
    };

    "org/gnome/desktop/app-folders/folders/Time" = {
      apps = [ "org.gnome.Contacts.desktop" "org.gnome.Calendar.desktop" ];
      name = "Time";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Office" = {
      apps = [ "startcenter.desktop" "base.desktop" "impress.desktop" "draw.desktop" "calc.desktop" "math.desktop" "writer.desktop" "org.gnome.Evince.desktop" ];
      name = "Office";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Development" = {
      apps = [ "com.diy_fever.DIYLayoutCreator.desktop" "org.gaphor.Gaphor.desktop" "org.fritzing.Fritzing.desktop" "cc.arduino.arduinoide.desktop" ];
      name = "Development";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Video" = {
      apps = [ "vlc.desktop" "org.gnome.Cheese.desktop" ];
      name = "Video";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Sync" = {
      apps = [ "org.keepassxc.KeePassXC.desktop" "com.nextcloud.desktopclient.nextcloud.desktop" ];
      name = "Sync";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Helper" = {
      apps = [ "org.gnome.Calculator.desktop" "org.gnome.clocks.desktop" "xterm.desktop" ];
      name = "Helper";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Settings" = {
      apps = [ "gnome-control-center.desktop" "org.gnome.Extensions.desktop" "cups.desktop" "nvidia-settings.desktop" "org.gnome.tweaks.desktop" ];
      name = "Settings";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" "gnome-system-monitor.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      excludes-apps = [ "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.tweaks.desktop" "org.gnome.Screenshot.desktop" ];
      name = "X-GNOME-Utilities.directory";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Manual" = {
      apps = [ "org.gnome.Tour.desktop" "nixos-manual.desktop" ];
      name = "Manual";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Graphic" = {
      apps = [ "gimp.desktop" "org.inkscape.Inkscape.desktop" "simple-scan.desktop" "org.gnome.eog.desktop" "org.gnome.Screenshot.desktop" ];
      name = "Graphic";
      translate = false;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/lgo/GoNixSys/home-manager/users/lgo/dotfiles/greatwave_nord.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/calendar" = {
      show-weekdate = true;
    };

    "org/gnome/desktop/input-sources" = {
      per-window = false;
      sources = [ (mkTuple [ "xkb" "de" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "full";
      gtk-im-module = "ibus";
      gtk-theme = "WhiteSur-dark-grey";
      icon-theme = "WhiteSur-dark";
      monospace-font-name = "FuraCode Nerd Font Mono weight=450 11";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "gnome-network-panel" "org-gnome-software" "org-keepassxc-keepassxc" "org-gnome-shell-extensions-gsconnect" "brave-browser" "codium" "gnome-control-center" "org-gnome-connections" "org-gnome-tweaks" ];
      show-banners = false;
    };

    "org/gnome/desktop/notifications/application/brave-browser" = {
      application-id = "brave-browser.desktop";
    };

    "org/gnome/desktop/notifications/application/codium" = {
      application-id = "codium.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-control-center" = {
      application-id = "gnome-control-center.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-connections" = {
      application-id = "org.gnome.Connections.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-shell-extensions-gsconnect" = {
      application-id = "org.gnome.Shell.Extensions.GSConnect.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-tweaks" = {
      application-id = "org.gnome.tweaks.desktop";
    };

    "org/gnome/desktop/notifications/application/org-keepassxc-keepassxc" = {
      application-id = "org.keepassxc.KeePassXC.desktop";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      natural-scroll = true;
      speed = 1.0;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      speed = 1.0;
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      disable-microphone = false;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      lock-delay = "uint32 0";
      lock-enabled = false;
      picture-options = "zoom";
      picture-uri = "file:///home/lgo/GoNixSys/home-manager/users/lgo/dotfiles/greatwave_nord.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = "uint32 720";
    };

    "org/gnome/desktop/wm/keybindings" = {
      move-to-workspace-1 = [ "<Primary><Super>1" ];
      move-to-workspace-2 = [ "<Primary><Super>2" ];
      move-to-workspace-3 = [ "<Primary><Super>3" ];
      move-to-workspace-4 = [ "<Primary><Super>4" ];
      move-to-workspace-5 = [ "<Primary><Super>5" ];
      move-to-workspace-6 = [ "<Primary><Super>6" ];
      move-to-workspace-left = [ "<Primary><Super>Left" ];
      move-to-workspace-right = [ "<Primary><Super>Right" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-5 = [ "<Super>5" ];
      switch-to-workspace-6 = [ "<Super>6" ];
      switch-to-workspace-left = [ "<Super>Left" ];
      switch-to-workspace-right = [ "<Super>Right" ];
      toggle-maximized = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      auto-raise = false;
      focus-mode = "sloppy";
      num-workspaces = 6;
      workspace-names = [ "Web" "Dev" "Term" "Files" "Graphics" "Mail" ];
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-position = mkTuple [ 0 0 ];
      window-size = mkTuple [ 1904 1156 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
      network-monitor-gio-name = "";
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = false;
      edge-tiling = true;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [];
      toggle-tiled-right = [];
    };

    "org/gnome/nautilus/list-view" = {
      use-tree-view = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      recursive-search = "always";
      search-filter-time-type = "last_modified";
      show-directory-item-counts = "always";
      show-image-thumbnails = "always";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1904 1156 ];
      maximized = false;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      area-screenshot = [ "<Shift>F10" ];
      area-screenshot-clip = [ "<Primary><Shift>F10" ];
      screencast = [ "<Primary><Super>F10" ];
      screenshot = [ "F10" ];
      screenshot-clip = [ "<Primary>F10" ];
      window-screenshot = [ "<Alt>F10" ];
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-timeout = 6000;
    };

    "org/gnome/shell" = {
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "native-window-placement@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "gsconnect@andyholmes.github.io" "forge@jmmaranan.com" "clipboard-indicator@tudmotu.com" ];
      welcome-dialog-last-shown-version = "41.1";
    };

    "org/gnome/shell/extensions/clipboard-indicator" = {
      toggle-menu = [ "<Super>odiaeresis" ];
    };

    "org/gnome/shell/extensions/forge" = {
      css-updated = "1641478221510";
      focus-border-toggle = false;
      tiling-mode-enabled = true;
      window-gap-size = "uint32 8";
      window-gap-size-increment = "uint32 1";
    };

    "org/gnome/shell/extensions/gsconnect" = {
      devices = [ "a1c8c1f19022f449" ];
      id = "01b0370d-9b11-4137-88ae-aae2c216d71f";
      name = "reiner";
    };

    "org/gnome/shell/extensions/gsconnect/device/0c2e0e1ddba7b03f" = {
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.1.178:1716";
      name = "Galaxy S10+";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "photo" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/a1c8c1f19022f449" = {
      certificate-pem = "'-----BEGIN CERTIFICATE-----\nMIIC9zCCAd+gAwIBAgIBATANBgkqhkiG9w0BAQsFADA/MRkwFwYDVQQDDBBhMWM4\nYzFmMTkwMjJmNDQ5MRQwEgYDVQQLDAtLREUgQ29ubmVjdDEMMAoGA1UECgwDS0RF\nMB4XDTIwMTAyODIzMDAwMFoXDTMwMTAyODIzMDAwMFowPzEZMBcGA1UEAwwQYTFj\nOGMxZjE5MDIyZjQ0OTEUMBIGA1UECwwLS0RFIENvbm5lY3QxDDAKBgNVBAoMA0tE\nRTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMK+UDOWie40bpEIonCC\nYFwxNuHI+xG+S/LvtPqhuVPWEKlY1mzfQSN9i6jE9vA6lFnpqGPnhwvo7/dLBgxE\nvUzviHge5kKkVtH7DK0A2p1UaJNFwpQC8DwbknQ2ced1SDptunfUBd8raNCPreD5\nZRyw8jTPzn2hICH14Gf2d4H0i5tIUY+JAxyJd+3xO2zRQQCFZlXrycUzL2dcR7A6\n6eD2rLi2YdBwwEnPq1/YxnFsoL8bSNKLtEamBfVI37tI8LmTyb5Ll7XnFfgVSzTY\nVvyob53sbzAvx+JqmMEuZ7EAiKo44cZ6WrtRxg/QaHNJVSeoZfV2XHWZLDTLahYY\nedsCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAZLvbxsBYCT8TLQPqduhxQqrfOyRK\nvVg6XiXgTfyD7+GPgwPQD+/4ZHvK+9mKRxjGhO3QDDV9X+c2wUb4tzKpOZiRK2gD\nX0H1tME/bPWVTjXaawhN0nR+RFR3BSaWyR2SeNjkSjP2DR3j4jGugOXQvUThQWCJ\ntszzthUwbioFSL242fx9UqZsGFak94wmYJENo/dZCBTuLugYD0O5PWlXKjRU4lcV\nKxtwwQXl9K284FwfkYdJTYcU5w2AIujfxgHHe6T1F8I6BPuuCQstY9etNS+HUZyB\n2OfD+T/hgto8i25md3BFIRbf9l+/mct9WGHWfiO6Agp+OEaSzaXiTw2Adw==\n-----END CERTIFICATE-----\n'";
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.1.175:1716";
      name = "Pixel 6 Pro";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      paired = true;
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "photo" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/a1c8c1f19022f449/plugin/battery" = {
      custom-battery-notification-value = "uint32 80";
    };

    "org/gnome/shell/extensions/gsconnect/device/a1c8c1f19022f449/plugin/clipboard" = {
      receive-content = true;
      send-content = true;
    };

    "org/gnome/shell/extensions/gsconnect/device/a1c8c1f19022f449/plugin/mpris" = {
      share-players = false;
    };

    # "org/gnome/shell/extensions/gsconnect/device/a1c8c1f19022f449/plugin/notification" = {
    #   applications = "'{"Drucker":{"iconName":"printer","enabled":false},"Alarmbenachrichtigungen in Evolution":{"iconName":"appointment-soon","enabled":false},"Datum und Zeit":{"iconName":"preferences-system-time","enabled":false},"Festplattenbelegungsanalyse":{"iconName":"org.gnome.baobab","enabled":false},"Geary":{"iconName":"org.gnome.Geary","enabled":false},"Energie":{"iconName":"gnome-power-manager","enabled":false},"Farbe":{"iconName":"preferences-color","enabled":false},"Dateien":{"iconName":"org.gnome.Nautilus","enabled":false},"Uhren":{"iconName":"org.gnome.clocks","enabled":false},"Archivverwaltung":{"iconName":"org.gnome.ArchiveManager","enabled":false}}'";
    # };

    "org/gnome/shell/extensions/gsconnect/device/a1c8c1f19022f449/plugin/share" = {
      receive-directory = "/home/lgo/Downloads";
    };

    "org/gnome/shell/extensions/gsconnect/device/a1c8c1f19022f449/plugin/systemvolume" = {
      share-sinks = false;
    };

    "org/gnome/shell/extensions/gsconnect/preferences" = {
      window-maximized = true;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "WhiteSur-dark-grey";
    };

    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/software" = {
      check-timestamp = "int64 1641463679";
      update-notification-timestamp = "int64 1641463683";
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 6.666667014360428e-2 0.7803921699523926 ]) (mkTuple [ 0.9686274528503418 0.6352941393852234 ]) (mkTuple [ 1.0 0.9647058844566345 ]) (mkTuple [ 0.7058823704719543 0.6549019813537598 ]) (mkTuple [ 0.9254902005195618 0.3686274588108063 ]) ];
      selected-color = mkTuple [ true 6.666667014360428e-2 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 187;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 275 141 ];
      window-size = mkTuple [ 1369 902 ];
    };

  };
}
