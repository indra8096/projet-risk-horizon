#!/bin/bash

# Identifiants de l'utilisateur julien
username="julien"
password="Julien_8568!=="

# Instructions pour l'utilisateur julien
echo "Bienvenue, $username !"
echo "Pour continuer, veuillez entrer votre mot de passe :"
read -s input_password

# Vérification du mot de passe
if [ "$input_password" == "$password" ]; then
    echo "Mot de passe correct. Vous êtes authentifié en tant que $username."
    # Ajoutez ici les instructions supplémentaires que vous souhaitez exécuter pour l'utilisateur julien
else
    echo "Mot de passe incorrect. Authentification échouée."
fi
