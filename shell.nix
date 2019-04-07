with rec
  { pkgs = import ./nix {};
    sources = import ./nix/sources.nix;
    easyPS = (import sources.easy-purescript-nix).inputs;
  };
pkgs.mkShell
  { buildInputs = [ pkgs.niv pkgs.nodejs easyPS.purs easyPS.spago ];
  }
