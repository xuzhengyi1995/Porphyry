#language: fr

Fonctionnalité: Set an item's attributs

Contexte:

  Soit le point de vue "Informations générales" rattaché à la page personnelle
  Soit le bouton "Ajouter" rattaché au point de vue "Informations générales"

Scénario: Créer un nouvel attribut

  Soit la page personnelle spécifié dans la configuration
  Quand un visiteur clique sur le bouton "Ajouter"
  Alors une liste déroulante pour définir le nom de nouvel attribut est affiché
  Et cette liste déroulante contient des attributs déjà ajoutés par d'autres utilisateurs
  Et un champ de texte pour définir la valeur de nouvel attribut est affiché

Scénario: Enregistrer le nouvel attribut

  Soit le bouton "Ajouter" cliqué
  Quand un visiteur saisit "adresse" dans la liste déroulante de nom de l'attribut
  Et il saisit "UTT" dans le champ de valeur de l'attribut
  Et il clique sur le bouton "OK"
  Alors ce nouvel attribut est enregistré

Scénario: Ajouter un nouvel attribut prédéfini

  Soit le bouton "Ajouter" cliqué
  Quand un visiteur choisit "Téléphone" dans la liste de nom de l'attribut
  Et il saisit "0123456789" dans le champ de valeur de l'attribut
  Et il clique sur le bouton "OK"
  Alors ce nouvel attribut est enregistré
