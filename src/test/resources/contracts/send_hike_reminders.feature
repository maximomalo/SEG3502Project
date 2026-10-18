# language: fr
Fonctionnalité: Envoi des rappels de randonnée
  Le système envoie les rappels la veille des randonnées
  aux participants dont l'inscription est confirmée.

  Contexte:
    Étant donné une exécution à l'heure fixe prévue selon le fuseau America/Toronto

  Scénario: Envoyer les rappels aux participants confirmés
    Étant donné une randonnée non annulée prévue le lendemain
    Et des inscriptions confirmées, en attente et annulées
    Quand le système demande l'envoi des rappels
    Alors les prévisions météo sont demandées pour le point de départ et la date de la randonnée
    Et un rappel est transmis au service de courriel pour chaque inscription confirmée
    Et chaque rappel contient la date, l'heure de début, le sentier et le point de départ
    Et aucun rappel n'est envoyé aux inscriptions en attente ou annulées
    Et le résultat de chaque tentative est enregistré

  Plan du scénario: Ajouter un avertissement météo
    Étant donné une randonnée non annulée prévue le lendemain
    Et une inscription confirmée
    Et des prévisions annonçant de la "<précipitation>"
    Quand le système demande l'envoi des rappels
    Alors le rappel contient un avertissement de "<précipitation>"

    Exemples:
      | précipitation |
      | pluie         |
      | neige         |

  Scénario: Envoyer un rappel sans avertissement de précipitations
    Étant donné une randonnée non annulée prévue le lendemain
    Et une inscription confirmée
    Et des prévisions sans pluie ni neige
    Quand le système demande l'envoi des rappels
    Alors un rappel est transmis sans avertissement de pluie ou de neige

  Scénario: Envoyer le rappel malgré une météo indisponible
    Étant donné une randonnée non annulée prévue le lendemain
    Et une inscription confirmée
    Et un service météo indisponible
    Quand le système demande l'envoi des rappels
    Alors un rappel est transmis sans avertissement météo
    Et le résultat de la tentative est enregistré

  Scénario: Exclure une randonnée annulée
    Étant donné une randonnée annulée prévue le lendemain
    Quand le système demande l'envoi des rappels
    Alors aucun rappel n'est envoyé pour cette randonnée

  Scénario: Exclure une randonnée prévue à une autre date
    Étant donné une randonnée prévue dans trois jours
    Quand le système demande l'envoi des rappels
    Alors aucun rappel n'est envoyé pour cette randonnée

  Scénario: Conserver un rappel dont l'envoi échoue
    Étant donné une randonnée non annulée prévue le lendemain
    Et une inscription confirmée
    Et le service de courriel refuse l'envoi
    Quand le système demande l'envoi des rappels
    Alors l'échec est enregistré
    Et le message est conservé pour une nouvelle tentative
