declare -xp
echo foo > $out
# nix repl
# d = derivation { name = "foo"; builder = "${bash}/bin/bash"; args = [ ./builder.sh ] ; system = builtins.currentSystem ; }
