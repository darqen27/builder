{ runCommand, jekyll }:

runCommand "erisia-website" {
  src = builtins.filterSource
    (path: type: type != "symlink")
    ./.;
  buildInputs = [ jekyll ];
  shellHook = "jekyll server -d $(mktemp -d); exit";
} "cd $src; jekyll build -d $out"
