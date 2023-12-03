#!/bin/sh

echo "Execution des tests unitaires..."
python -m unittest

# Vérifier si les tests ont réussi
if [ $? -eq 0 ]
then
  echo "Les tests ont réussi ;), démarrage de l'application."
  exec python src/app.py
else
  echo "Les tests ont échoué :'(, arrêt du conteneur..."
  exit 1
fi
