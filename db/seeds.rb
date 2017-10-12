# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
urls = [
  'https://a0.muscache.com/im/pictures/99202866/6002bc6b_original.jpg?aki_policy=xx_large',
  'https://a0.muscache.com/im/pictures/103126636/42c680af_original.jpg?aki_policy=x_large',
  'https://a0.muscache.com/im/pictures/108851806/667a7dce_original.jpg?aki_policy=x_large',
  'https://a0.muscache.com/im/pictures/103126695/1873ecff_original.jpg?aki_policy=x_large'
]

environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

Flat.create(name: "Charmante maison au calme de 115 M²", address: "42 rue Binaud")

Flat.all.each do |flat|
  flat.photo_urls = urls
end

puts "#{Flat.all.size} flats created !"

