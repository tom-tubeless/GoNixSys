#!/bin/sh
pushd ~/GoNixSys
sudo nixos-rebuild test --flake '/home/lgo/GoNixSys/#' --impure
popd
