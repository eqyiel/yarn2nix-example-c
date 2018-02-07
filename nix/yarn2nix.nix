{ nixpkgs ? <nixpkgs>, system ? builtins.currentSystem }:

with (import nixpkgs { inherit system; });

# nix-prefetch-git git@github.com:Profpatsch/yarn2nix.git --rev refs/heads/master
(import (fetchFromGitHub {
  owner = "Profpatsch";
  repo = "yarn2nix";
  rev = "c2b809dd8328592e5234390495c8816ce3d09b13";
  sha256 = "1c4m6ym6lv7yxxbywdwn7drj93f4f0xjfls603hysyvn1bcv9wmd";
}))
