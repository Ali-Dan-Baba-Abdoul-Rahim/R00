#!/bin/bash  
# Indique que le script doit être exécuté avec Bash

# Initialisation du score et du nombre total de questions
score=0
total=3

# Titre du quiz
echo "===== QUIZ INTERACTIF ====="
echo  # Ligne vide pour aérer l'affichage

# --- Question 1 ---
echo "1) Quelle commande permet de lister les fichiers dans un répertoire ?"
echo "a) ls"      # Affiche l'option a
echo "b) cd"      # Affiche l'option b
echo "c) rm"      # Affiche l'option c
read -p "Votre réponse : " rep1  # Demande la réponse et la stocke dans rep1

# Vérifie la réponse de l'utilisateur
if [[ "$rep1" == "a" ]]; then
    echo "Bonne réponse !"       # Si bonne réponse
    ((score++))                  # Incrémente le score
else
    echo "Mauvaise réponse. C'était 'a'."  # Si mauvaise réponse
fi
echo  # Ligne vide

# --- Question 2 ---
echo "2) Quelle commande affiche le chemin absolu du répertoire courant ?"
echo "a) whereami"
echo "b) pwd"
echo "c) path"
read -p "Votre réponse : " rep2

if [[ "$rep2" == "b" ]]; then
    echo "Bonne réponse !"
    ((score++))
else
    echo "Mauvaise réponse. C'était 'b'."
fi
echo

# --- Question 3 ---
echo "3) Que fait la commande 'rm' ?"
echo "a) Renomme un fichier"
echo "b) Déplace un fichier"
echo "c) Supprime un fichier"
read -p "Votre réponse : " rep3

if [[ "$rep3" == "c" ]]; then
    echo "Bonne réponse !"
    ((score++))
else
    echo "Mauvaise réponse. C'était 'c'."
fi
echo

# --- Résultats finaux ---
echo "===== Résultat ====="
echo "Score : $score / $total"  # Affiche le score final

# Message personnalisé en fonction du score
if (( score == total )); then
    echo "Excellent !"          # Si score parfait
elif (( score >= 2 )); then
    echo "Bien joué !"          # Si au moins 2 bonnes réponses
else
    echo "Peut mieux faire. Continuez à pratiquer."  # Si 0 ou 1 bonne réponse
fi
