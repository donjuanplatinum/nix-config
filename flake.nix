{
  description = "DonjuanPlatinum Nixos Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self,nixpkgs,home-manager, ... }: {
    nixosConfigurations.my-nixos = nixpkgs.lib.nixosSystem{
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.userUserPackages = true;
          home-manager.users.donjuan = import ./home.nix;
          home-manager.extraSpecialArgs = inputs;
        }
      ];
    };
  };
}
