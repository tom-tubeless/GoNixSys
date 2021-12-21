#!/bin/sh
pushd ~/GoNixSys
sudo nixos-rebuild switch --flake '/home/lgo/GoNixSys/#' --impure
popd
