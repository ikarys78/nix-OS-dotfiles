{
  description = "Your new nix config with chaotic-nyx";

  inputs = {
    # Nixpkgs oficial (instável)
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # Kernel Chaotic-Nyx com overlay, cache e registry
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    # Home Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Hyprland (opcional, se você realmente usar)
    hyprland.url = "github:hyprwm/Hyprland";
    # nvf
  };

  outputs = { self, nixpkgs, home-manager, chaotic,  ... }@inputs: {
    
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix

          chaotic.nixosModules.nyx-overlay

          chaotic.nixosModules.nyx-cache

          chaotic.nixosModules.nyx-registry
        ];
      };
    };
    
    homeConfigurations = {
      "icaro@nixos" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = { inherit inputs; };
        modules = [ ./nixpkgs/home.nix ];
      };
    };

    apps.x86_64-linux.homeManager = home-manager.packages.x86_64-linux.home-manager;
  };
}

