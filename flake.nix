{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-uconsole.url = "github:nixos-uconsole/nixos-uconsole/feat/uc-sleep-go-rewrite";
  };

  outputs = { nixos-uconsole, ... }: {
    nixosConfigurations.my-uconsole = nixos-uconsole.lib.mkUConsoleSystem {
      variant = "cm4";  # or "cm5"
      # modules = [ ./configuration.nix ];
    };
  };
}
