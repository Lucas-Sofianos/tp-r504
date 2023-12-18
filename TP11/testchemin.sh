#!/bin/bash

# Vérifier le nombre d'arguments
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <chemin_absolu>"
  exit 1
fi

# Récupérer le chemin absolu fourni en argument
chemin_absolu="$1"

# Diviser le chemin en segments
IFS='/' read -ra segments <<< "$chemin_absolu"

# Construire le chemin progressivement et tester l'existence de chaque dossier
chemin_en_cours=""
for segment in "${segments[@]}"; do
  chemin_en_cours+="/$segment"
  
  # Tester l'existence du dossier
  if [ ! -d "$chemin_en_cours" ]; then
    echo "Chemin invalide, le dossier $segment n'existe pas dans $chemin_en_cours"
    exit 1
  fi
done

# Si tous les dossiers existent
echo "Chemin valide"

