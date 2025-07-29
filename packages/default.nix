{ options, config, pkgs, lib, ... }:

{
  imports = [
    ./git.nix

    ./shell.nix
    ./nix.nix
  ];
}
