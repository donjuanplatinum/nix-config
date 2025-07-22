{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  # 打印机
  services.printing.enable = true;
}
