#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    printf "O script deve ser executado como root.\nThe script must be run as root.\n\n"
    if sudo true; then
        printf "Acesso root obtido.\nRoot access obtained.\n\n"
    else
        printf "Não foi possível obter acesso root.\nUnable to obtain root access.\n\n"
        exit 1
    fi
fi

all_args=("$@")

if [ "${#all_args[@]}" -eq 0 ]; then
    sudo python3 ./server/python/sv.py
else
    # shellcheck disable=SC2068
    sudo python3 ./server/python/sv.py ${all_args[@]}
fi