{
  description = "Lua + Lua Language Server dev shell";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    devShells.default = let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
      };
    in pkgs.mkShell {
      packages = with pkgs; [
        lua
        lua-language-server
      ];

      shellHook = ''
        echo "Lua dev shell ready 🐉"
      '';
    };
  };
}
