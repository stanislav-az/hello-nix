{ a, b ? 3, trueMsg ? "yes", falseMsg ? "no" }:
if a > b
then builtins.trace trueMsg true
else builtins.trace falseMsg false
# nix repl
# test01 = import ./test01.nix
# test01 { a = 5; b = 6; trueMsg = "ok"; }
