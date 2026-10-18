# language: fr
Fonctionnalité: Annulation d'une inscription
  Un randonneur peut annuler sa propre inscription avant la date limite.

  Contexte:
    Étant donné un randonneur connecté
    Et une randonnée non annulée
    Et une date limite non atteinte

  Scénario: Annuler une inscription confirmée sans liste d'attente
    Étant donné une inscription confirmée appartenant au randonneur
    Et une randonnée complète sans personne en attente
    Quand le randonneur confirme l'annulation de son inscription
    Alors son inscription devient annulée et reste dans l'historique
    Et une place devient disponible
    Et la randonnée redevient ouverte

  Scénario: Attribuer la place à la première personne admissible
    Étant donné une inscription confirmée appartenant au randonneur
    Et une randonnée complète avec des personnes en attente
    Et la première personne en attente est encore admissible
    Quand le randonneur confirme l'annulation de son inscription
    Alors son inscription devient annulée
    Et l'inscription de la première personne en attente devient confirmée
    Et cette personne reçoit un courriel de confirmation
    Et les positions de la liste d'attente sont mises à jour
    Et la randonnée reste complète

  Scénario: Passer une personne devenue inadmissible
    Étant donné une inscription confirmée appartenant au randonneur
    Et une première personne en attente dont l'adhésion est expirée
    Et une deuxième personne en attente encore admissible
    Quand le randonneur confirme l'annulation de son inscription
    Alors son inscription devient annulée
    Et l'inscription de la première personne en attente est annulée
    Et cette personne est informée
    Et l'inscription de la deuxième personne devient confirmée
    Et cette personne reçoit un courriel de confirmation
    Et les positions de la liste d'attente sont mises à jour

  Scénario: Annuler une inscription en attente
    Étant donné une inscription en attente appartenant au randonneur
    Quand le randonneur confirme l'annulation de son inscription
    Alors son inscription devient annulée
    Et les positions de la liste d'attente sont mises à jour
    Et le nombre de places disponibles reste inchangé

  Scénario: Refuser une annulation à la date limite
    Étant donné une inscription confirmée appartenant au randonneur
    Et la date limite est maintenant atteinte
    Quand le randonneur demande l'annulation de son inscription
    Alors la demande est refusée
    Et son inscription reste confirmée

  Scénario: Refuser l'annulation de l'inscription d'une autre personne
    Étant donné une inscription confirmée appartenant à un autre randonneur
    Quand le randonneur demande l'annulation de cette inscription
    Alors la demande est refusée
    Et cette inscription reste confirmée

  Scénario: Refuser l'annulation d'une inscription déjà annulée
    Étant donné une inscription déjà annulée appartenant au randonneur
    Quand le randonneur demande l'annulation de cette inscription
    Alors la demande est refusée
    Et aucune inscription n'est modifiée
