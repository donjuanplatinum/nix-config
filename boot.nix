{
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    efiInstallAsRemovable = true;
    device = "nodev";
    useOSProber = true;
    extraEntries = ''
                 menuentry "重启" {
                           reboot
                 }
                 menuentry "关机" {
                           halt
                 }

'';
  };
  boot.loader.efi = {
    efiSysMountPoint = "/EFI";
  };
}
