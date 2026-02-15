{ config, pkgs, lib, ...}: {
  services.gpsd = { 
    enable = true;
    devices = [ "/dev/ttyACM1" ];
    port = 2947;
  };
}
