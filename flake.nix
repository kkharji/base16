{
  description = "Base16 flake: shell, tmux and neovim.";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem (system:
      with (import nixpkgs { inherit system; });
      let
        pybase16 = with python39Packages;
          let sha256 = "sha256-lC3KkIxHrTS4IO7tMGo8wGqoOeZrvm1Zu/dYygBVbTs=";
          in buildPythonApplication rec {
            pname = "pybase16-builder";
            version = "0.2.7";
            src = fetchPypi { inherit pname version sha256; };
            propagatedBuildInputs = [ pystache pyyaml aiofiles setuptools ];
          };
      in rec {
        packages = {
          base16 = stdenv.mkDerivation rec {
            name = "base16";
            version = "master";
            src = ./.;
            buildInputs = [ pybase16 git cacert ];
            buildPhase = ''
              runHook preBuild
              # Because pybase16 does use git to do internal fetching
              export GIT_SSL_CAINFO=${cacert.out}/etc/ssl/certs/ca-bundle.crt
              export SSL_CERT_FILE=${cacert.out}/etc/ssl/certs/ca-bundle.crt
              make all
              runHook postBuild
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out/share
              mv share $out
              cp -r lua $out/share/nvim/lua
              runHook postInstall
            '';
          };
        };
        defaultPackage = packages.base16;
      });
}
