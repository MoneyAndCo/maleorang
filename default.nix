with import <nixpkgs> {};

let

  mavenRepo = import ./maleorang-deps.nix { inherit stdenv curl; };

in stdenv.mkDerivation {
  name = "maleorang";
  src = ./.;
  buildInputs = [ gradle jdk ];
  preConfigure = ''
    export REPO=$(echo ${mavenRepo} | sed 's;/;\\/;g')
    sed -i -e "s/\( *\)mavenCentral()/\1maven {\n\1  url \"$REPO\"\n\1}/g" build.gradle
  '';
  buildPhase = ''
    gradle --offline -g $(pwd) copyDeps -x test
  '';
  installPhase = ''
    mkdir -p $out
    cp build/libs/*.jar $out
  '';
}
