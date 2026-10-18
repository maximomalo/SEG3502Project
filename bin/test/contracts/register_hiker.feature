# language: fr
Fonctionnalité: Enregistrement d'un randonneur
  Un membre du club peut créer un compte avec un code
  d'invitation valide et accepter la décharge de responsabilité.

  Scénario: Créer le compte d'un adulte
    Étant donné un membre âgé de 18 ans ou plus
    Et un code d'invitation valide et inutilisé
    Et une adresse courriel non associée à un compte
    Et des informations personnelles valides
    Et une décharge acceptée par le membre
    Quand le membre soumet son formulaire
    Alors son compte est créé avec une adhésion active
    Et le code d'invitation devient utilisé

  Scénario: Créer le compte d'un mineur
    Étant donné un membre âgé de moins de 18 ans
    Et un code d'invitation valide et inutilisé
    Et une adresse courriel non associée à un compte
    Et des informations personnelles valides
    Et une décharge acceptée par son tuteur
    Et le nom du tuteur est fourni
    Quand le membre soumet son formulaire
    Alors son compte est créé avec une adhésion active
    Et le nom du tuteur est enregistré
    Et le code d'invitation devient utilisé

  Scénario: Refuser un code invalide
    Étant donné un formulaire autrement valide
    Et un code d'invitation invalide
    Quand le membre soumet son formulaire
    Alors aucun compte n'est créé
    Et une erreur concernant le code est affichée

  Scénario: Refuser un code déjà utilisé
    Étant donné un formulaire autrement valide
    Et un code d'invitation déjà utilisé
    Quand le membre soumet son formulaire
    Alors aucun compte n'est créé
    Et une erreur concernant le code est affichée

  Scénario: Refuser un courriel déjà associé à un compte
    Étant donné un code d'invitation valide et inutilisé
    Et une adresse courriel déjà associée à un compte
    Quand le membre soumet son formulaire
    Alors aucun nouveau compte n'est créé
    Et le code d'invitation reste inutilisé
    Et une erreur concernant le courriel est affichée

  Scénario: Refuser une décharge non acceptée
    Étant donné un code d'invitation valide et inutilisé
    Et un formulaire dont la décharge n'est pas acceptée
    Quand le membre soumet son formulaire
    Alors aucun compte n'est créé
    Et le code d'invitation reste inutilisé
    Et une erreur concernant la décharge est affichée

  Scénario: Refuser un mineur sans nom de tuteur
    Étant donné un membre âgé de moins de 18 ans
    Et un code d'invitation valide et inutilisé
    Et un formulaire sans nom de tuteur
    Quand le membre soumet son formulaire
    Alors aucun compte n'est créé
    Et le code d'invitation reste inutilisé
    Et une erreur concernant le tuteur est affichée
