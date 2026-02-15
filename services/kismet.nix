{ config, pkgs, lib, ...}: {
  services.kismet = { 
    enable = true;
    dataDir = "/loot/kismet";
    httpd = {
      enable = true;
    };
  };
}
