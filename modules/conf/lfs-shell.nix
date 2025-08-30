with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "lfs-build-environment";
  buildInputs = [
    # Ferramentas básicas para o LFS
    coreutils
    binutils
    gcc
    glibc
    make
    gawk
    bash
    patch
    xz
    gzip
    bzip2
    perl
    python3
    texinfo
    util-linux # Para comandos como mount, umount, etc.
    ncurses # Para algumas dependências de bibliotecas
    zlib # Outra dependência comum
    # Adicione mais ferramentas conforme o guia LFS exigir
  ];

  shellHook = ''
    echo "Ambiente LFS pronto! Siga o guia Linux From Scratch."
    echo "Lembre-se de montar seu diretório de trabalho LFS em /mnt/lfs se necessário."
  '';
}
