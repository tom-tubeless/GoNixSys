#!/bin/sh
pushd ~/GoNixSys
sudo nixos-rebuild switch --flake .#
popd
