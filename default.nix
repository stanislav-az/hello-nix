let
  nixpkgs = import <nixpkgs> { };
  mylib = import ./lib.nix;
  allPkgs = nixpkgs // pkgs;
  callPackage = path: overrides:
    let f = import path;
        overridable = mylib.makeOverridable f (builtins.intersectAttrs (builtins.functionArgs f) allPkgs);
    in overridable.override overrides;
  pkgs = with nixpkgs;
    {
      mkDerivation = import ./autotools.nix nixpkgs;
      hello = callPackage ./hello.nix { };
      graphviz = callPackage ./graphviz.nix { };
      graphvizCore = callPackage ./graphviz.nix { gdSupport = false; };
    };
in
pkgs
