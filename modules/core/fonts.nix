{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      dejavu_fonts
      fira-code
      fira-code-symbols
      noto-fonts
      noto-fonts-emoji
      noto-fonts-cjk-sans
      font-awesome
      jetbrains-mono
      material-icons
      maple-mono.NF
      #symbola   #still 404 error
      terminus_font
    ];
  };
}
