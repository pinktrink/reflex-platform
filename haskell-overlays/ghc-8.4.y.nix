{ haskellLib, fetchFromGitHub }:
with haskellLib;
self: super: {
  cabal-macosx = dontCheck super.cabal-macosx;
  enclosed-exceptions = dontCheck super.enclosed-exceptions; # see https://github.com/jcristovao/enclosed-exceptions/issues/12
  haddock-library-ghcjs = dontCheck super.haddock-library-ghcjs;
  haddock-api-ghcjs = dontCheck super.haddock-api-ghcjs;

  # Versions that haven’t made it into Nixpkgs master yet
  testing-feat = self.callCabal2nix "testing-feat" (fetchFromGitHub {
    owner = "JonasDuregard";
    repo = "testing-feat";
    rev = "a1b32842a8cc8ab467d93a9f97f2365330a02113";
    sha256 = "1pxafc7rdd25j0m0dxgxqhw3vnxb3lw9gv6n885x2lag9mcdkpax";
  }) {};
  snap-server = self.callCabal2nix "snap-server" (fetchFromGitHub {
    owner = "snapframework";
    repo = "snap-server";
    rev = "b2a888230e107046404b047ff3b8690a592f124c";
    sha256 = "05zbc4lyyphsrkj5h043rgx9gjsgmcd8zahzjz69npd9cf91aa6w";
  }) {};
  map-syntax = self.callCabal2nix "map-syntax" (fetchFromGitHub {
    owner = "mightybyte";
    repo = "map-syntax";
    rev = "acebcf0a83ee639e1a0c49850b9c85821d53f621";
    sha256 = "076knpvls1489gish9z30lhb21vqx44k366vc2i3kdql815v1vqv";
  }) {};
}
