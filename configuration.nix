{ config, pkgs, ... }:

{

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs; [
    git
    vim
    neovim
    wget
  ];
  # Set the default editor to vim
  environment.variables.EDITOR = "nvim";

  # ......

  users.users.krystian = { 
    isNormalUser = true; 
    home = "/home/krystian"; 
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
