Fonctionnalité: Ajout d'une certification d'organisateur

  Scénario: Ajouter une certification valide
    Étant donné un administrateur connecté
    Et un randonneur existant
    Quand l'administrateur ajoute une certification valide avec son numéro, ses dates et le niveau d'organisateur
    Alors la certification et le niveau sont enregistrés
    Et le randonneur obtient le rôle d'organisateur

  Scénario: Refuser une modification par un non-administrateur
    Étant donné un randonneur connecté qui n'est pas administrateur
    Quand il demande d'ajouter une certification
    Alors la demande est refusée
    Et aucune certification n'est ajoutée
    Et ses rôles restent inchangés

  Scénario: Refuser des dates incohérentes
    Étant donné un administrateur connecté
    Quand il ajoute une certification dont l'expiration précède la délivrance
    Alors des erreurs sont affichées
    Et aucune certification n'est ajoutée
    Et les rôles du randonneur restent inchangés
