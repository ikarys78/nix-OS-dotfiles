{ config, lib, pkgs, ... }: {
# kernel modificado

  boot.kernelPackages = inputs.chaotic.legacyPackages.${pkgs.system}.linuxPackages_cachyos.extend (final: prev: {
    kernel = prev.kernel.override (prevAttrs: {
      configfile = prevAttrs.configfile.overrideAttrs (prevAttrs': {
        installPhase = ''
          cp ${builtins.toFile "attuned-kernel-config" (builtins.readFile ./.config)} $out
        '';
        passthru = prevAttrs'.passthru // {kernelPatches = prevAttrs'.passthru.kernelPatches ++ [./change-target.patch];};
      });
    });
  });
}
