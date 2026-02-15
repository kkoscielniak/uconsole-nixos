{ config, pkgs, ... }:

{
  home.homeDirectory = "/home/krystian";

  home.packages = with pkgs; [
    neovim
    neofetch
  ];

  programs.git = {
    enable = true; 
    userName = "Krystian Koscielniak"; 
    userEmail = "krystiankoscielniak@gmail.com";
  }; 

  home.stateVersion = "25.11"; 
}


