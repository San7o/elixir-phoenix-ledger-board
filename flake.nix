{
  description = "Elixir";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        toolchain = "latest";
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            inotify-tools # for phoenix live reload
            act
            elixir
            erlang_27
          ];

          shellHook = ''
          '';
        };
      });
}
