#!/bin/sh
pushd ~/GoNixSys/home-manager
home-manager switch --flake ~/GoNixSys/home-manager/#$USER -b backup -v
popd
