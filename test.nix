{ pkgs ? import <nixpkgs> }:

let
  cargoNix = pkgs.callPackage ./Cargo.nix { };
in
cargoNix.rootCrate.build.override {
  runTests = true;
}
