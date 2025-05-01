#!/bin/bash

# Funkcja sprawdzająca obecność narzędzi
check_tools() {
    command -v curl >/dev/null 2>&1 || { echo "Curl is required but not installed. Exiting."; exit 1; }
    command -v wget >/dev/null 2>&1 || { echo "Wget is required but not installed. Exiting."; exit 1; }
}

# Sprawdzenie systemu
check_system() {
    if [[ $(id -u) -ne 0 ]]; then
        echo "You must be root or use sudo to run this script."
        exit 1
    fi
}

# Pobranie instalatora
download_installer() {
    echo "Downloading Miniconda installer..."
    curl -L https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh
}

# Instalacja Conda
install_conda() {
    echo "Installing Miniconda..."
    bash miniconda.sh -b -p $HOME/miniconda
    rm miniconda.sh  # Usunięcie instalatora po zakończeniu
}

# Ustawienie ścieżki Conda
set_path() {
    echo "Setting up the Conda path..."
    echo "export PATH=\"$HOME/miniconda/bin:$PATH\"" >> $HOME/.bashrc
    source $HOME/.bashrc
}

# Aktualizacja Conda
update_conda() {
    echo "Updating Conda to the latest version..."
    conda update --yes conda
}

# Główna funkcja instalacyjna
main() {
    check_tools
    check_system
    download_installer
    install_conda
    set_path
    update_conda
    echo "Conda has been installed successfully!"
}

# Uruchomienie skryptu
main
