{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.forge
    gnomeExtensions.gsconnect
    gnomeExtensions.top-bar-organizer
    gtk-engine-murrine
    whitesur-gtk-theme
    whitesur-icon-theme
    zafiro-icons
  ];
}