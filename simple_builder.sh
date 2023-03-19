export PATH="$coreutils/bin:$gcc/bin"
mkdir $out
gcc -o $out/simple $src
# nix repl
# :l <nixpkgs>
# simple = derivation { name = "simple"; builder = "${bash}/bin/bash"; args = [ ./simple_builder.sh ]; gcc = gcc; coreutils = coreutils; src = ./simple.c; system = builtins.currentSystem; }
# :b simple
