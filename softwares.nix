{pkgs,...}:
{
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
  environment.systemPackages = [
    pkgs.google-chrome
    pkgs.emacs
    pkgs.librime
  ];  
}
