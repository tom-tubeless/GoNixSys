#!/bin/sh
pushd ~/GoNixSys/home-manager
home-manager switch --flake ~/GoNixSys/home-manager/#$USER -v
popd
