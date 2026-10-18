# language: fr
Fonctionnalité: Consulter les détails d'une randonnée
  Un visiteur ou un utilisateur enregistré peut consulter
  les informations d'une randonnée sélectionnée.

  Scénario: Afficher les détails
    Étant donné une randonnée présente dans les résultats de recherche
    Quand un visiteur sélectionne cette randonnée
    Alors les détails de la randonnée sont affichés
    Et son organisateur est affiché
    Et le nombre de places restantes est affiché

  Scénario: Consulter une randonnée complète
    Étant donné une randonnée complète présente dans les résultats
    Quand un visiteur sélectionne cette randonnée
    Alors les détails de la randonnée sont affichés
    Et le nombre de places restantes est zéro

  Scénario: Consulter un identifiant inexistant
    Étant donné un identifiant ne correspondant à aucune randonnée
    Quand un visiteur demande les détails avec cet identifiant
    Alors le système indique que la randonnée est introuvable
