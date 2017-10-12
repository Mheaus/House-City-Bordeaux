# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
urls = []

environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

Flat.create(name: "Charmante maison avec terrasse au calme de 115 M²", address: "42 rue Binaud", description: "En plein coeur des Chartrons au calme à 10 m à pied des quais et du centre , maison spacieuse et agréable ; salon de 45 M2 et sa cuisine toute équipée, une suite parentale, une chambre mansardée et une mezzanine,d'une terrasse privative de 30 M2 équipée d'un salon de jardin...")

Flat.all.each do |flat|
  flat.photo_urls = urls
end

puts "#{Flat.all.size} flats created !"

