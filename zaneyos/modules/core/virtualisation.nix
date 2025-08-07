{pkgs, ...}: {
  # Only enable either docker or podman -- Not both
  virtualisation = {
    docker = {
      enable = false;
    };

    podman.enable = false;

    libvirtd = {
      enable = true;
    };

    virtualbox.host = {
      enable = false;
      enableExtensionPack = false;
    };
  };

  programs = {
    virt-manager.enable = false;
  };

  environment.systemPackages = with pkgs; [
    virt-viewer # View Virtual Machines
    lazydocker
    docker-client
  ];
}
