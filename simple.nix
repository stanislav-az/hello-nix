with (import <nixpkgs> { });
derivation {
  name = "simple";
  builder = "${bash}/bin/bash";
  args = [ ./simple_builder.sh ];
  src = ./simple.c;
  system = builtins.currentSystem;
  inherit gcc coreutils;
}
