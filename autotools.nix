pkgs: attrs:
with pkgs;
let
  defaultAttrs = {
    builder = "${bash}/bin/bash";
    args = [ ./generic_builder.sh ];
    baseInputs = [ gnutar gzip gnumake gcc coreutils gawk gnused gnugrep findutils patchelf binutils.bintools ];
    system = builtins.currentSystem;
  };
in
derivation (defaultAttrs // attrs)
