#!/bin/bash
# URL du site xkcd.com sur le strip passé en argument
URL="http://xkcd.com/$1"

# Requête de récupération de la page html puis son traitement de recherche de l'image
result=$(wget -qO- "$URL" | grep -Ei '.*meta property="og:image"*.' | sed 's/">$//')

# Vérification de la récupération
# echo $result 

# Traitement de l'élément récupéré, extraction de l'URL après "https:"
image_url=$(echo "$result" | awk -F "https://" '{print $2}')

# Affichage de l'URL de l'image
wget "https://$image_url"

# Ouvrir l'image avec xdg-open
xdg-open "$(basename "$image_url")"
