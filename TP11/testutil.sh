#!/bin/bash

while true; do
    echo "Sélectionnez:"
    echo "1 - Vérifier l’existence d’un utilisateur"
    echo "2 - Connaître l’UID d’un utilisateur"
    echo "q - Quitter"

    read -p "Votre choix: " choice

    case $choice in
        1)
            read -p "Entrez le nom de l'utilisateur à vérifier: " username
            if id "$username" >/dev/null 2>&1; then
                echo "L'utilisateur $username existe."
            else
                echo "L'utilisateur $username n'existe pas."
            fi
            ;;
        2)
            read -p "Entrez le nom de l'utilisateur pour connaître l'UID: " username
            uid=$(id -u "$username" 2>/dev/null)
            if [ $? -eq 0 ]; then
                echo "L'UID de l'utilisateur $username est $uid."
            else
                echo "L'utilisateur $username n'existe pas."
            fi
            ;;
        q)
            echo "Au revoir!"
            exit 0
            ;;
        *)
            echo "Choix invalide. Veuillez sélectionner à nouveau."
            ;;
    esac
done

