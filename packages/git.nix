{pkgs,...}:
{
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    lfs = { # 打开LFS
      enable = true;
    };
    
  };
}
