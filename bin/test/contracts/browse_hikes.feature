# language: fr
Fonctionnalité: Parcourir les randonnées
  Un visiteur ou un utilisateur enregistré peut rechercher
  les randonnées ouvertes et complètes.

  Scénario: Consulter la liste sans filtre
    Étant donné des randonnées ouvertes, complètes, fermées et annulées
    Quand un visiteur consulte la liste sans filtre
    Alors seules les randonnées ouvertes et complètes sont affichées
    Et elles sont triées par date croissante

  Scénario: Rechercher par sentier
    Étant donné des randonnées ouvertes sur plusieurs sentiers
    Quand un visiteur recherche les randonnées d'un sentier
    Alors seules les randonnées ouvertes ou complètes de ce sentier sont affichées

  Scénario: Rechercher par date
    Étant donné des randonnées ouvertes à différentes dates
    Quand un visiteur recherche les randonnées pour une date précise
    Alors seules les randonnées ouvertes ou complètes de cette date sont affichées

  Scénario: Rechercher par difficulté
    Étant donné des randonnées ouvertes de différentes difficultés
    Quand un visiteur recherche une difficulté précise
    Alors seules les randonnées ouvertes ou complètes de cette difficulté sont affichées

  Scénario: Filtrer selon son niveau
    Étant donné un randonneur connecté dont le niveau est intermédiaire
    Et des randonnées ouvertes de différentes difficultés
    Quand il demande les randonnées correspondant à son niveau
    Alors seules les randonnées ouvertes ou complètes de difficulté modérée sont affichées

  Scénario: Aucun résultat
    Étant donné aucune randonnée correspondant aux critères
    Quand un visiteur lance la recherche
    Alors une liste vide est affichée
