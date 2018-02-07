{ nixpkgs ? <nixpkgs>, system ? builtins.currentSystem }:

let

  nixpkgsLocal = import nixpkgs { inherit system; };

  nixpkgsUnstable = import (nixpkgsLocal.callPackage ./nix/nixpkgs.nix {}) {
    inherit system;
    overlays = [
      (import ./nix/overlay.nix)
    ];
  };

in with nixpkgsUnstable; stdenv.mkDerivation rec {
  name = "yarn2nix-example-env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = with pkgs; [ yarn nodejs yarn2nix ];
}
