# language: fr
Fonctionnalité: Création d'une randonnée
  Un organisateur approuvé peut créer une randonnée
  sur un sentier autorisé si sa certification et les données sont valides.

  Contexte:
    Étant donné un organisateur connecté et approuvé
    Et une certification valide à la date prévue
    Et un niveau d'organisateur suffisant pour le sentier
    Et un sentier CCN autorisant la randonnée et ouvert à la saison choisie
    Et un titre, une description, une durée et une capacité valides
    Et un début de randonnée dans le futur
    Et une date limite future située au plus 14 jours avant le début sans le dépasser

  Scénario: Créer une randonnée valide
    Quand l'organisateur soumet le formulaire
    Alors une randonnée avec un identifiant unique est créée
    Et son statut est ouvert
    Et les informations saisies sont enregistrées

  Scénario: Refuser une certification expirée à la date prévue
    Étant donné que la certification expire avant la randonnée
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Refuser un niveau d'organisateur insuffisant
    Étant donné que le niveau de l'organisateur est insuffisant pour le sentier
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Refuser un organisateur non approuvé
    Étant donné que l'organisateur n'est plus approuvé
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Refuser un sentier fermé pour la saison
    Étant donné que le sentier est fermé à la saison choisie
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Refuser un sentier interdisant la randonnée
    Étant donné que le sentier n'autorise pas la randonnée
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Refuser une date limite passée
    Étant donné une date limite antérieure à l'heure actuelle
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Refuser une date limite après le début
    Étant donné une date limite postérieure au début de la randonnée
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Refuser une date limite trop éloignée du début
    Étant donné une date limite située 15 jours avant le début
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée

  Scénario: Accepter une date limite exactement 14 jours avant le début
    Étant donné une date limite future située exactement 14 jours avant le début
    Quand l'organisateur soumet le formulaire
    Alors une randonnée avec un identifiant unique est créée
    Et son statut est ouvert

  Scénario: Utiliser les données conservées lorsque la CCN est indisponible
    Étant donné que le service de la CCN est indisponible
    Et une copie conservée contenant les informations nécessaires sur le sentier
    Quand l'organisateur soumet le formulaire
    Alors les informations conservées sont utilisées pour valider le sentier
    Et une randonnée avec un identifiant unique est créée
    Et son statut est ouvert

  Scénario: Refuser la création sans informations suffisantes sur le sentier
    Étant donné que le service de la CCN est indisponible
    Et aucune copie conservée contenant les informations nécessaires sur le sentier
    Quand l'organisateur soumet le formulaire
    Alors la création est refusée
    Et aucune randonnée n'est créée
