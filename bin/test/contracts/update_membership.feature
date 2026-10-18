# language: fr
Fonctionnalité: Mise à jour de l'adhésion

  Plan du scénario: Modifier le statut comme administrateur
    Étant donné un administrateur connecté
    Et un randonneur existant
    Quand l'administrateur demande le statut "<statut>"
    Alors le statut de l'adhésion devient "<statut>"

    Exemples:
      | statut    |
      | active    |
      | expirée   |
      | suspendue |

  Scénario: Refuser une modification par un randonneur
    Étant donné un randonneur connecté qui n'est pas administrateur
    Quand il demande de changer le statut de son adhésion
    Alors la demande est refusée
    Et son adhésion reste inchangée

  Scénario: Refuser un statut inconnu
    Étant donné un administrateur connecté
    Quand il demande un statut d'adhésion inconnu
    Alors la demande est refusée
    Et l'adhésion reste inchangée
