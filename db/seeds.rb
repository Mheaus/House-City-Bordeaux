# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
urls = []

environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

def seed_icon(file_name)
  File.join(Rails.root, "/app/assets/images/icons/#{file_name}")
end

Flat.create(
  name: "Maison avec Terrasse",
  address: "42 rue Binaud",
  description: "Au calme en plein coeur des Chartrons, maison spacieuse et agréable ; salon de 45m² et sa cuisine toute équipée, une suite parentale, une chambre mansardée et une mezzanine,d'une terrasse privative de 30m² équipée d'un salon de jardin."
)

icons = ["bed.svg", "clim.svg", "internet.svg", "people.svg", "room.svg"]

Flat.last.photo_urls = urls
icons.each do |icon|
  Insight.create(
    flat: Flat.last,
    legend: "personnes",
    quantity: 8,
    icon: seed_icon(icon)
  )
end

Room.create(
  name: "outdoor",
  description: "La maison peut accueillir de 2 à 8 personnes est une dépendance située au fond du jardin de la propriétaire, la terrasse cloturée sépare les 2 maisons.",
  flat: Flat.last
)

Room.create(
  name: "living",
  description: "Grand salon/salle à manger ensoleillé donnant sur la terrasse (canapé convertible 2 places, table basse, meuble Tv, grand écran plat, table pour manger)",
  flat: Flat.last
)

Room.create(
  name: "kitchen",
  description: "Cuisine américaine toute équipée : réfrigérateur, four, micro-onde, plaque à induction, lave-vaisselle, grille pain, machine à café, assortiments de vaisselles et de verres.",
  flat: Flat.last
)

Room.create(
  name: "bedroom1",
  description: "Suite parentale : lit 2 places 160×200, tables de chevet, dressing, salle de bain et douche tout confort.",
  flat: Flat.last
)

Room.create(
  name: "bedroom2",
  description: "A l’étage une chambre mansardée : 2 lits d'une place 90x200 modulable pour un lit de 2 personnes.",
  flat: Flat.last
)

Room.create(
  name: "bedroom3",
  description: "Mezzanine avec lit 2 places 140x200 avec vue sur le salon (pouvant faire office de salle de jeu , coin détente, bureau...)",
  flat: Flat.last
)

Room.create(
  name: "bathroom_dressing",
  description: "2 Salles d’eau et toilettes, un dressing et une machine à laver",
  flat: Flat.last
)




puts "#{Flat.all.size} flats created !"

