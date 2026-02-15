{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-uconsole.url = "github:nixos-uconsole/nixos-uconsole/feat/uc-sleep-go-rewrite";
  };

  outputs = { nixos-uconsole, home-manager, ... }: {
    nixosConfigurations.my-uconsole = nixos-uconsole.lib.mkUConsoleSystem {
      variant = "cm4";  # or "cm5"
      # modules = [ ./configuration.nix ];
      modules = [
        ./configuration.nix
	home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true; 
          home-manager.useUserPackages = true; 
          home-manager.users.krystian = ./home.nix; 
        }
      ];
    };
  };
}
