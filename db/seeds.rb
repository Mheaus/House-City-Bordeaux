# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Flat.create(name: "Charmante maison au calme de 115 M²", description: "42 rue Binaud")
Flat.create(name: "Suite Saint Julien", description: "Une suite des plus remarquables situé au 3ème étage avec vu sur les toits de Bordeaux. A seulement quelques minutes à pied du centre, c'est un cadre qui saura ravir petits et grands pendant un séjour merveilleux.")

puts "#{Flat.all.size} flats created !"

