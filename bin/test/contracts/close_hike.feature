# language: fr
Fonctionnalité: Fermeture automatique d'une randonnée
  Le système ferme les inscriptions et les annulations
  lorsque la date limite est atteinte.

  Scénario: Fermer une randonnée ouverte à la date limite
    Étant donné une randonnée ouverte
    Et sa date limite d'inscription est atteinte
    Quand le système demande la fermeture de la randonnée
    Alors son statut devient fermé
    Et les nouvelles inscriptions sont bloquées
    Et les annulations d'inscription sont bloquées
    Et le changement de statut est enregistré avec l'ancien statut, le nouveau statut, la date, l'heure et le système comme responsable

  Scénario: Fermer une randonnée complète après la date limite
    Étant donné une randonnée complète
    Et sa date limite d'inscription est dépassée
    Quand le système demande la fermeture de la randonnée
    Alors son statut devient fermé
    Et les nouvelles inscriptions sont bloquées
    Et les annulations d'inscription sont bloquées
    Et le changement de statut est enregistré avec le système comme responsable

  Scénario: Ne pas fermer avant la date limite
    Étant donné une randonnée ouverte
    Et sa date limite d'inscription n'est pas atteinte
    Quand le système demande la fermeture de la randonnée
    Alors son statut reste ouvert
    Et aucun changement de statut n'est enregistré

  Scénario: Conserver une randonnée annulée
    Étant donné une randonnée annulée
    Et sa date limite d'inscription est atteinte
    Quand le système demande la fermeture de la randonnée
    Alors son statut reste annulé
    Et aucun changement de statut n'est enregistré

  Scénario: Conserver une randonnée déjà fermée
    Étant donné une randonnée déjà fermée
    Quand le système demande la fermeture de la randonnée
    Alors son statut reste fermé
    Et aucun changement de statut supplémentaire n'est enregistré
