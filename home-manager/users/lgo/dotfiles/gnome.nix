{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.forge
    gnomeExtensions.gsconnect
    whitesur-gtk-theme
    whitesur-icon-theme
    zafiro-icons
  ];
}