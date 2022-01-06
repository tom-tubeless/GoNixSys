{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
  clang
  # gcc
  ];
}