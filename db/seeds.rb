# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Flat.create(name: "Charmante maison au calme de 115 M²", address: "42 rue Binaud", background_url: "https://a0.muscache.com/im/pictures/99202866/6002bc6b_original.jpg?aki_policy=xx_large")

puts "#{Flat.all.size} flats created !"

