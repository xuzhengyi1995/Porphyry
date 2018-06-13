require 'capybara/cucumber'
require 'selenium/webdriver'

Capybara.run_server = false
Capybara.default_driver = :selenium_chrome_headless
Capybara.app_host = "http://localhost:3000"
Capybara.default_max_wait_time = 10

# Conditions

Soit("le point de vue {string} rattaché au portfolio {string}") do |viewpoint, portfolio|
  # On the remote servers
end

Soit("le corpus {string} rattaché au portfolio {string}") do |viewpoint, portfolio|
  # On the remote servers
end

Soit("{string} le portfolio spécifié dans la configuration") do |portfolio|
  case portfolio
  when "vitraux"
    true
  when "indéfini"
    pending "alternate configuration"
  else
    false
  end
end

Soit("les informations de {string} stocké dans le serveur utt")do |nom|
end

Soit("le login de {string} qui est {string}")do |nom, login|
end

Soit("le mot de passe de {string} qui est {string}")do |nom, password|
end


Soit("un visiteur saisit {string} dans le champs login et {string} dans le champs mot de passe") do|login, password|
  case login
  when "jie.ji@utt.fr"
    true
  when "jj"
    false
  end
  case password
  when "passe"
    true
  else
    false
  end
end

Soit("l'utilisateur ayant un Item lui correspondant au portfolio {string}") do |portfolio|
# On the remote servers
end

Soit("l'Attribute de son Item comprenant l'AttributeName{string}")do |attributeName|

end

Soit("l'AttributeName {string} étant avec l'AttributeValue {string}")do |attributeName, attributeValue|

end

Soit("l'utilisateur étant sur la page de modification de profil")do

end

# Events

Quand("un visiteur ouvre la page d'accueil du site") do
  visit "/"
end

Quand("un visiteur ouvre la page d‘accueil d‘un site dont l‘adresse commence par {string}") do |portfolio|
  visit "/"
end

Quand("il clique sur valider") do
  visit "/"
end

Quand("il modifie l'AttributeName {string} avec l'AttributeValue {string}")do |attributeName, attributeValue|
  visit "/"
end

Et("il clique sur le bouton {string}")do |bouton|
 click "Enregistrer"
end

# Outcomes

Alors("le titre affiché est {string}") do |portfolio|
  expect(page).to have_content(portfolio)
end

Alors("un des points de vue affichés est {string}") do |viewpoint|
  expect(page).to have_content viewpoint
end

Alors("un des corpus affichés est {string}") do |corpus|
  expect(page).to have_content corpus
end

Alors("le pop-up se ferme")do

end

Alors("l'AttributeValue de l'AttributeName {string} change de {string} à {string} dans la base de données") do |attributeName, attributeValue1,attributeValue2|
  expect(page).to have_content attributeName
  expect(page).to have_content attributeValue
  expect(page).to have_content attributeValue2
end

Et("un message disant que la modification est bien enregistrée affiche")do
end

Et("sur la page profil de cet utilisateur l'AttributeName {string} est avec l'AttributeValue {string}")do |attributeName, attributeValue|
  expect(page).to have_content(attributeName)
  expect(page).to have_content(attributeValue)
end
