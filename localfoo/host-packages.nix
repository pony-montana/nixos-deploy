{
  config,
  inputs,
  pkgs,
  pkgsUnstable,
  ...
}: {
  # this allows you to access `pkgsUnstable` anywhere in your config
  _module.args.pkgsUnstable = import inputs.nixpkgs-unstable {
    inherit (pkgs.stdenv.hostPlatform) system;
    inherit (config.nixpkgs) config;
  };

  environment.systemPackages = with pkgs; [
    transmission_4
    tremc
    libinput
    magic-wormhole
    (pass-wayland.withExtensions (exts: [exts.pass-otp]))
    pkgsUnstable.electrum
    neomutt
    isync
    mutt-wizard
    zathura
    tshark
    mullvad-browser
    tor
    tor-browser
    ungoogled-chromium
    imv
    pmbootstrap
    (python3.withPackages (python-pkgs:
      with python-pkgs; [
        pandas
        requests
      ]))
  ];
}
