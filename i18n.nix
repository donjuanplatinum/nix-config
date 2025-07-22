{pkgs,...}:
{
  i18n = {
    inputMethod = {
      enabled = "fcitx5";
      fcitx5 = {
        waylandFrontend = true;
        addons = with pkgs; [
          fcitx5-rime  
          fcitx5-configtool
          fcitx5-gtk
          rime-data
        ];
        settings = {
          globalOptions = { # 定义于~/.config/fcitx5/config
            "Hotkey/Triggerkeys" = { "0" = "Ctrl+Alt+space"; }; # 输入法切换键位
          };
          inputMethod = { # 定义于~/.config/fcitx5/profile
            "Groups/0" = {
              Name = "Default";
              "Default Layout" = "us";
              DefaultIM = "rime";
            };
            "Groups/0/Items/0".Name = "keyboard-us";
            GroupOrder."0" = "Default";
          };
        };
      };
    };
  };

}
