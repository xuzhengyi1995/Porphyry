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
    true #current configuration
  when "indéfini"
    pending "alternate configuration"
  else
    false
  end
end

#conditions set an item's attributs
Soit("le point de vue {string} rattaché à la page personelle") do |viewpoint|
end

Soit("le bouton {string} rattaché au point de vue {string}") do |button, viewpoint|
end

Soit("la page personnelle {string} spécifié dans la configuration") do |student|
  #student name
end

Soit("le bouton {string} cliqué") do |button|
  click_button(button)
end
# Events

Quand("un visiteur ouvre la page d'accueil du site") do
  visit "/"
end

Quand("un visiteur ouvre la page d‘accueil d‘un site dont l‘adresse commence par {string}") do |portfolio|
  visit "/"
end

#Events set item's attributs

Quand("un visiteur clique sur le bouton {string}") do |button|
  click_button button
end

Quand("un visieur saisit {string} dans le champ de nom de l'attribut") do |attribut_name|
  find(key).set attribut_name
end

Quand("il saisit {string} dans le champ de valeur de l'attribut ") do |attribut_value|
  find(value).set attribut_value
end

Quand("il clique sur le bouton {string}") do |button|
  click_button button
end
# Outcomes

Alors("le titre affiché est {string}") do |portfolio|
  expect(page).to have_content portfolio
end

Alors("un des points de vue affichés est {string}") do |viewpoint|
  expect(page).to have_content viewpoint
end

Alors("un des corpus affichés est {string}") do |corpus|
  expect(page).to have_content corpus
end

#Outcomes set item
Alors("un champ de nom de l'attribut appelé {string} est affiché") do |attKey|
  expect(page).to have_field attKey
end

Alors("un champ de valeur de l'attribut appelé {string} est affiché") do |attValue|
 expect(page).to have_field attValue
end

Alors("un nouvel attibut {string} applé {string} est enregistré") do |attKey,attValue|
  expect(page).to have_content attKey
  expect(page).to have_content attValue
end
