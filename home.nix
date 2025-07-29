{ config, pkgs, ...}:
{
  home.username = "donjuan";
  home.homeDirectory = "/home/donjuan";
  home.packages = with pkgs; [
    
    fastfetch

    # zip
    xz
    unzip
    p7zip

    # systemtools
    perf
    strace
    lsof

    # networktools
    aria2
    dnsutils
    nmap

    # monitor
    btop
    
    wps-office

    qq

    # nix
    nix-index
    nixd
  ];

  programs.git = {
    enable = true;
    userName = "DonjuanPlatinum";
    userEmail = "donjuan@donplat.top";
  };
  home.stateVersion = "25.05";

  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-gstreamer
      obs-vaapi
      obs-pipewire-audio-capture
    ];
  };
}
