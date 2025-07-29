# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix       # Include the results of the hardware scan.
      ./network.nix # 网络配置
      ./i18n.nix # 输入法配置
      ./desktop.nix # 桌面系统配置
      ./hardware.nix # 硬件架构驱动相关
      ./boot.nix # boot配置
      ./packages # 包
      ./bluetooth.nix # 蓝牙
      ./battery.nix # 电池相关
    ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true; # 启用非自由软件
  nix.settings.substituters = lib.mkForce [ "https://mirror.nju.edu.cn/nix-channels/store" ]; # 换源
  
  time.timeZone = "Asia/Shanghai"; # 时区

  system.copySystemConfiguration = true;
  
  environment.variables = {
    GOPROXY="https://repo.nju.edu.cn/go/,direct";
    };

  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [ ];
  }; # 在 NixOS 上运行未修补的动态二进制文件。
  system.stateVersion = "25.05";

}

