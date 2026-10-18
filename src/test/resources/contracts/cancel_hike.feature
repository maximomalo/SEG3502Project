# language: fr
Fonctionnalité: Annulation d'une randonnée
  L'organisateur responsable ou un administrateur peut annuler
  une randonnée avant son début en indiquant un motif.

  Scénario: Annuler une randonnée par son organisateur
    Étant donné un organisateur connecté responsable de la randonnée
    Et une randonnée non annulée qui n'a pas encore commencé
    Et des inscriptions confirmées et en attente
    Quand l'organisateur confirme l'annulation avec un motif
    Alors la randonnée devient annulée
    Et toutes ses inscriptions confirmées et en attente deviennent annulées
    Et les personnes concernées reçoivent un courriel contenant le motif
    Et le changement de statut est enregistré avec l'ancien statut, le nouveau statut, la date, l'heure, l'auteur et le motif
    Et la randonnée et ses inscriptions restent dans l'historique

  Scénario: Annuler une randonnée par un administrateur
    Étant donné un administrateur connecté
    Et une randonnée non annulée qui n'a pas encore commencé
    Quand l'administrateur confirme l'annulation avec un motif
    Alors la randonnée devient annulée
    Et ses inscriptions confirmées et en attente deviennent annulées
    Et les personnes concernées reçoivent un courriel contenant le motif
    Et le changement de statut est enregistré avec l'administrateur comme auteur et le motif

  Scénario: Refuser un organisateur non responsable
    Étant donné un organisateur connecté qui n'est pas responsable de la randonnée
    Et cet organisateur n'est pas administrateur
    Et une randonnée qui n'a pas encore commencé
    Quand cet organisateur demande son annulation
    Alors la demande est refusée
    Et la randonnée et ses inscriptions restent inchangées

  Scénario: Refuser une annulation sans motif
    Étant donné un administrateur connecté
    Et une randonnée non annulée qui n'a pas encore commencé
    Quand l'administrateur confirme l'annulation avec un motif vide
    Alors la demande est refusée
    Et la randonnée et ses inscriptions restent inchangées

  Scénario: Refuser une annulation après le début
    Étant donné un administrateur connecté
    Et une randonnée qui a déjà commencé
    Quand l'administrateur demande son annulation avec un motif
    Alors la demande est refusée
    Et la randonnée et ses inscriptions restent inchangées
