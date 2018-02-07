self: super: rec {
  yarn = (super.yarn.override ({ nodejs = super.pkgs.nodejs-8_x; }));
  nodejs = super.pkgs.nodejs-8_x;
  yarn2nix = (import ./yarn2nix.nix {});
}
