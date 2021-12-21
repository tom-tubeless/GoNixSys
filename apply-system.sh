#!/bin/sh
pushd ~/GoNixSys
sudo nixos-rebuild switch --flake '/home/lgo/GoNixSys/#$USER' --impure
popd
