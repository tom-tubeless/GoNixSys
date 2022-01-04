{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
  pythonFull
  jupyter
  ];

}
