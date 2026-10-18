# language: fr
Fonctionnalité: Inscription à une randonnée
  Un randonneur admissible peut obtenir une place
  ou rejoindre la liste d'attente.

  Contexte:
    Étant donné un randonneur connecté avec une adhésion active
    Et un niveau admissible pour la randonnée
    Et aucune inscription confirmée ou en attente pour cette randonnée
    Et une date limite d'inscription non atteinte

  Scénario: Confirmer une inscription quand une place est disponible
    Étant donné une randonnée ouverte avec deux places disponibles
    Quand le randonneur demande son inscription
    Alors son inscription est confirmée avec sa date et son heure
    Et une seule place reste disponible
    Et un courriel de confirmation est envoyé

  Scénario: Prendre la dernière place
    Étant donné une randonnée ouverte avec une seule place disponible
    Quand le randonneur demande son inscription
    Alors son inscription est confirmée
    Et la randonnée devient complète
    Et un courriel de confirmation est envoyé

  Scénario: Rejoindre la liste d'attente
    Étant donné une randonnée complète
    Quand le randonneur demande son inscription
    Alors il est ajouté à la fin de la liste d'attente
    Et un courriel indique sa position

  Scénario: Refuser une adhésion inactive
    Étant donné que son adhésion est maintenant expirée
    Quand le randonneur demande son inscription
    Alors la demande est refusée
    Et aucune inscription n'est créée

  Scénario: Refuser un niveau insuffisant
    Étant donné une difficulté supérieure de deux niveaux à son habileté
    Quand le randonneur demande son inscription
    Alors la demande est refusée
    Et aucune inscription n'est créée

  Scénario: Refuser une inscription en double
    Étant donné une inscription déjà confirmée pour cette randonnée
    Quand le randonneur demande son inscription
    Alors la demande est refusée
    Et aucune inscription supplémentaire n'est créée

  Scénario: Refuser une inscription après la date limite
    Étant donné que la date limite est maintenant atteinte
    Quand le randonneur demande son inscription
    Alors la demande est refusée
    Et aucune inscription n'est créée

  Scénario: Refuser une inscription à une randonnée annulée
    Étant donné une randonnée annulée
    Quand le randonneur demande son inscription
    Alors la demande est refusée
    Et aucune inscription n'est créée
