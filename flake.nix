{
  description = "Base16 flake: shell, tmux and neovim.";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem (system:
      with (import nixpkgs { inherit system; });
      let
        pybase16 = with python39Packages;
          let sha256 = "sha256-EuFQz7wVA4NcpO2zH0U8ABaRw2EfHzo4dutTgYylZh4=";
          in buildPythonApplication rec {
            pname = "pybase16-builder";
            version = "0.2.8";
            src = fetchPypi { inherit pname version sha256; };
            propagatedBuildInputs = [ pystache pyyaml aiofiles setuptools ];
          };
      in rec {
        packages = {
          base16HomeModule = modules;
          base16 = stdenv.mkDerivation rec {
            name = "base16";
            version = "master";
            src = ./.;
            buildInputs = [ installShellFiles ];
            buildPhase = ''
              runHook preBuild
              runHook postBuild
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out/share
              cp -r share $out
              cp -r lua $out/share/nvim/lua
              cp shell/plugin.zsh $out/share/shell/plugin.zsh
              runHook postInstall
            '';
            postInstall = ''
              installShellCompletion --zsh shell/completions/_color
            '';
          };
        };
        devShells.default = mkShell {
          buildInputs = [ nixpkgs-fmt pybase16 ];
          shellHook = ''
            which pybase16
          '';
        };
        modules = import ./default.nix;
        defaultPackage = packages.base16;
      });
}
