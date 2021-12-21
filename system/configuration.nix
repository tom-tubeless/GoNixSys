{ config, pkgs, ... }:

{

  imports =
  [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../services/nixos-auto-update.nix
      ./kde.nix
  ];

  nixpkgs = {
    config = {
      allowBroken = true;
      allowUnfree = true;
    };
  };

  fileSystems."/" = {
    options = [ "noatime" "nodiratime" ];
  };

  ### Nix Configuration ###
  nix = {
    package = pkgs.nixFlakes;
    useSandbox = true;
    autoOptimiseStore = true;
    readOnlyStore = false;
    allowedUsers = [ "@wheel" ];
    trustedUsers = [ "@wheel" ];
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '';
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d --max-freed $((64 * 1024**3))";
    };
    optimise = {
      automatic = true;
      dates = [ "weekly" ];
    };
   };

  ### Boot Configuration ###
  boot = {
    initrd.checkJournalingFS = false; # for Virtualbox only
    kernelPackages = pkgs.linuxPackages_latest;
    # kernelModules = mkBefore [
    #   "intel_agp"
    #   "i915"
    # ];
    # kernelModules = mkBefore [
    #   "intel_agp"
    #   "i915"
    # ];
    # kernelCompression = mkBefore [
    #   "zstd"
    # ];
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        efiSupport = true;
        enable = true;
        enableCryptodisk = true;
        device = "nodev";
        version = 2;
      };
    };
  initrd.luks.devices = {
        root = {
          device = "/dev/sda2";
          preLVM = true;
        };
    };
  };

  ### Networking ###
  networking = {
    # hostName = "testbox";
    interfaces.enp0s3.useDHCP = true;
    useDHCP = false;
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 22 ];
      allowedUDPPorts = [ 53 ];
      allowPing = true;
    };
  };

  ### Time and locales
  time.timeZone = "Europe/Berlin";
  i18n = {
    defaultLocale = "de_DE.UTF-8";
    supportedLocales = [ "de_DE.UTF-8/UTF-8" "en_US.UTF-8/UTF-8" ];
  };
  console = {
    font = "Lat2-Terminus32";
    keyMap = "de";
    colors = [
      "2E3440"
      "3B4252"
      "434C5E"
      "4C566A"
      "D8DEE9"
      "E5E9F0"
      "ECEFF4"
      "8FBCBB"
      "88C0D0"
      "81A1C1"
      "5E81AC"
      "BF616A"
      "D08770"
      "EBCB8B"
      "A3BE8C"
      "B48EAD"
    ];
  };
  fonts = {
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      powerline-fonts
      nerdfonts
    ];
  };


  ### User Configuration ###
  users = {
    mutableUsers = false;
    users.lgo = {
      description = "Lutz Go";
      extraGroups = [ "users" "wheel" "networkmanager" "docker"];
      # mkpasswd -m sha-512 password
      hashedPassword = "$6$ZaYKHBFurTaVvrjA$zhtaS9VAttn95Op3ny5GE2sbn2d29.660/yQnRbTyazVL3fXn7qUV//v21fhKeQR6fwtZI7300X8TBzJlDuIt/";
      home = "/home/lgo";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK8E9qXTKVGPUVFynznaYEUwXCEyjNjE/CYmlciqKpmh tom1@xps-15" ];
      # packages = with pkgs; [
      #   python39Full
      # ];
      shell = pkgs.zsh;
      uid = 1000;
    };
  };

  ### Security ###
  security = {
    sudo = {
      enable = true;
      wheelNeedsPassword = true;
    };
  };

  ### Services ###
  services = {
    nixos-auto-update.enable = true;
    logrotate = {
      enable = true;
      extraConfig = ''
        compress
        create
        daily
        dateext
        delaycompress
        missingok
        notifempty
        rotate 31
      '';
    };
    openssh = {
      enable = true;
      permitRootLogin = "no";
      passwordAuthentication = false;
      forwardX11 = true;
      ports = [ 22 ];
    };
  };

  ### Virtualization ###
  virtualisation = {
    docker = {
      enable = true;
      autoPrune.enable = true;
      enableOnBoot = true;
    };
  };

  ### Programm Configuration ###
  programs = {
    ssh.startAgent = false;
    vim.defaultEditor = true;
    zsh = {
      enable = true;
      ohMyZsh= {
        enable = true;
        plugins = [
          "battery"
          "git"
        ];
        customPkgs = [
          pkgs.nix-zsh-completions
          pkgs.zsh-autocomplete
          pkgs.zsh-autosuggestions
          pkgs.zsh-completions
          pkgs.zsh-nix-shell
          pkgs.zsh-powerlevel10k
          pkgs.zsh-syntax-highlighting
        ];
      };
      promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    };
    nano.nanorc = ''
      set atblanks
      set autoindent
      set brackets ""')>]}"
      set linenumbers
      set magic
      set matchbrackets "(<[{)>]}"
      set mouse
      set rawsequences
      set smarthome
      set softwrap
      set tabsize 4
      set tabstospaces
      set titlecolor bold,lightwhite,blue
      set promptcolor lightwhite,lightblack
      set statuscolor bold,lightwhite,green
      set errorcolor bold,lightwhite,red
      set selectedcolor lightwhite,magenta
      set stripecolor ,yellow
      set scrollercolor cyan
      set numbercolor cyan
      set keycolor cyan
      set functioncolor green
    '';
  };

  ### Environment ###
  environment = {
    systemPackages = with pkgs; [
      git
      hunspellDicts; [
        de_DE
        en_US
      ];
      mkpasswd
      wget
    ];
    variables = {
      CLICOLOR = "TRUE";
    };
  
  shellAliases = {
      cp = "cp -i";
      diff = "diff --color=auto";
      dmesg = "dmesg --color=always | lless";
      egrep = "egrep --color=auto";
      fgrep = "fgrep --color=auto";
      grep = "grep --color=auto";
      mv = "mv -i";
      ping = "ping -c3";
      ps = "ps -ef";
      sudo = "sudo -i";
      vdir = "vdir --color=auto";
    };
  };

  ### System Configuration ###
  system = {
    stateVersion = "21.11"; # Did you read the comment?
    autoUpgrade = {
      enable = true;
      allowReboot = false;
      flake = "github:tom-tubeless/GoNixSys";
      flags = [
        "--recreate-lock-file"
        "--no-write-lock-file"
        "-L" # print build logs
      ];
      dates = "daily";
    };
  };
}
