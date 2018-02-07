{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "nixos-unstable-${version}";
  version = "2018-02-08";

  # nix-prefetch-git git@github.com:NixOS/nixpkgs-channels.git --rev refs/heads/nixos-unstable
  src = fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs-channels";
    rev = "2e4aded366914d625a2f31208e8ac8548cb43a7e";
    sha256 = "1zcbvzxk1vyk4ngfdyss8mlb3mqp050ygpnwqny0bxbzlqkrc4bh";
  };

  dontBuild = true;
  preferLocalBuild = true;

  installPhase = ''
    cp -a . $out
  '';
}
