{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    gpsd
    git
    vim
    neovim
    wget
  ];

  environment.variables.EDITOR = "nvim";

  services.xserver = {
    enable = true; 

    config = ''
      Section "Monitor"
        Identifier "DSI-1"
        Option "Rotate" "right"
      EndSection
    '';    

    windowManager.i3 = {
      enable = true; 
      extraPackages = with pkgs; [
        rofi
	dmenu
	i3status
	i3lock
      ];
    };
  };

  users.users.krystian = { 
    isNormalUser = true; 
    home = "/home/krystian"; 
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
