{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    vscodium
    vscode-extensions.valentjn.vscode-ltex
  ];
}