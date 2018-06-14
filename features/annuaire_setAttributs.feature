#language: fr

Fonctionnalité: Set an item's attributs

Contexte:

  Soit le point de vue "Informations générales" rattaché à la page personnelle
  Soit le bouton "Ajouter" rattaché au point de vue "Informations générales"

Scénario: Créer un nouvel attribut

  Soit la page personnelle ETU spécifié dans la configuration
  Quand un visiteur clique sur le bouton "Ajouter"
  Alors un champ de nom de l'attribut appelé "attribut_name" est affiché
  Et un champ de valeur de l'attribut appelé "attribut_value" est affiché

Scénario: Enregistrer le nouvel attribut

  Soit le bouton "Ajouter" cliqué
  Quand un visiteur saisit "adresse" dans le champ de nom de l'attribut
  Et il saisit "UTT" dans le champ de valeur de l'attribut
  Et il clique sur le bouton "OK"
  Alors un nouvel attibut "adresse" applé "UTT" est enregistré
