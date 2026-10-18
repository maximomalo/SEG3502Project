# language: fr
Fonctionnalité: Mise à jour du profil d'un randonneur

  Scénario: Modifier son propre profil
    Étant donné un randonneur connecté
    Quand il soumet des informations personnelles valides pour son propre profil
    Alors les informations sont enregistrées

  Scénario: Modifier un profil comme administrateur
    Étant donné un administrateur connecté
    Quand il soumet des informations personnelles valides pour un randonneur
    Alors les informations sont enregistrées

  Scénario: Refuser la modification du profil d'une autre personne
    Étant donné un randonneur connecté qui n'est pas administrateur
    Quand il demande de modifier le profil d'une autre personne
    Alors la demande est refusée
    Et le profil reste inchangé

  Scénario: Refuser des informations invalides
    Étant donné un utilisateur connecté autorisé à modifier le profil
    Quand il soumet une adresse courriel invalide
    Alors des erreurs sont affichées
    Et le profil reste inchangé
