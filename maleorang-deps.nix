{stdenv, curl}:

stdenv.mkDerivation {
  name = "maleorang-maven-deps";
  builder = ./fetch-maleorang-deps.sh;

  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "06b8r0s9yfk5p1zcfqvbvxbihbg5jzxcwf0s5kzkngb9ndacpqc1";

  nativeBuildInputs = [ curl ];

  impureEnvVars = stdenv.lib.fetchers.proxyImpureEnvVars;
}
