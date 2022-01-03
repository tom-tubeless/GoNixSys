{pkgs, lib, ... }:

{
  services.flatpak.enable = true;
  # users.users.lgo.extraGroups = [ "flatpak" ];
}
