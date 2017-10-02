# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Flat.create(name: "1er étage - Suite Chereau", description: "merveilleux appartement dans le centre de bordeaux, 200m carré au premier étage. Complètement neuf avec tout les services compris.")
Flat.create(name: "1er étage - Suite des Ormes", description: "Un appartement de prestige en plein coeur de Bordeaux. Idéal pour les séjours familles. Avec son jacuzzi et un service irréprochable.")
Flat.create(name: "1er étage - Suite Saint Julien", description: "Une suite des plus remarquables situé au 3ème étage avec vu sur les toits de Bordeaux. A seulement quelques minutes à pied du centre, c'est un cadre qui saura ravir petits et grands pendant un séjour merveilleux.")

puts "#{Flat.all.size} flats created !"
