# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Le Moulin du Val-Dieu", address: "Val Dieu 298, 4880 Aubel", category: "belgian")
puts "Created Le Moulin du Val-Dieu"
Restaurant.create!(name: "La Villa Loubésienne", address: "92 Av. de la République, 33450 Saint-Loubès", category: "french")
puts "Created La Villa Loubésienne"
Restaurant.create!(name: "Osteria Pizzeria da Bartolo", address: "15 Rue des Faussets, 33000 Bordeaux", category: "italian")
puts "Created Osteria Pizzeria da Bartolo"
Restaurant.create!(name: "Pizzeria Nennella Mia", address: "279bis Av. d'Eysines, 33110 Le Bouscat", category: "italian")
puts "Created Pizzeria Nennella Mia"
Restaurant.create!(name: "Mama Dumpling", address: "56 Rue du Pas-Saint-Georges, 33000 Bordeaux", category: "chinese")
puts "Created Mama Dumpling"
Restaurant.create!(name: "Isshin Ramen", address: "22 Rue Fernand Philippart, 33000 Bordeaux", category: "japanese")
puts "Created Isshin Ramen"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
