{pkgs,...}:
{
  programs.command-not-found.enable = false;
  # for home-manager, use programs.bash.initExtra instead
  programs.zsh.interactiveShellInit = ''
        source ${pkgs.nix-index}/etc/profile.d/command-not-found.sh
        '';
  
}
