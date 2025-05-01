{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.mambaforge
    pkgs.bashInteractive
    pkgs.jq
    pkgs.gnugrep
    pkgs.gawk
  ];

  shellHook = ''
    source ${pkgs.mambaforge}/etc/profile.d/conda.sh

    # Odczytaj nazwę środowiska z environment.yml (linia z 'name:')
    if [ -f environment.yml ]; then
      env_name=$(grep '^name:' environment.yml | awk '{print $2}')
      echo ">>> Aktywuję środowisko Conda: $env_name"
      conda activate "$env_name" || echo "⚠️ Środowisko nie istnieje. Użyj: conda env create -f environment.yml"
    else
      echo "⚠️ Brak pliku environment.yml – nie można aktywować środowiska Conda."
    fi
  '';
}