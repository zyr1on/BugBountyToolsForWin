#!/bin/bash

_complete_path() {
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -o dirnames -W "${cur}" -- "${cur}") )
}

complete -F _complete_path my_script

echo "Plase enter tools path:"
read -e path

sudo ln -s $path/Nmap/nmap.exe /usr/bin/nmap
sudo ln -s $path/Nmap/ncat.exe /usr/bin/ncat
sudo ln -s $path/amass.exe /usr/bin/amass
sudo ln -s $path/hydra/hydra.exe /usr/bin/hydra
sudo ln -s $path/rustscan.exe /usr/bin/rustscan
sudo ln -s $path/ffuf.exe /usr/bin/ffuf
sudo ln -s $path/subfinder.exe /usr/bin/subfinder
sudo ln -s $path/httpx.exe /usr/bin/httpx
sudo ln -s $path/nuclei.exe /usr/bin/nuclei
sudo ln -s $path/vaf.exe /usr/bin/vaf
sudo ln -s $path/webanalyze.exe /usr/bin/webanalyze
sudo ln -s $path/s3scanner.exe /usr/bin/s3scanner
sudo ln -s $path/gau.exe /usr/bin/gau
sudo ln -s $path/qsreplace.exe /usr/bin/qsreplace
