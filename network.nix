{
  networking.extraHosts = ''
    '';
  networking.hostName = "donjuanplatinum"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  # Configure network proxy if necessary
  #networking.proxy.default = "http://user:password@proxy:port/";
  networking.proxy.default = "http://127.0.0.1:12334";
  #networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
  
