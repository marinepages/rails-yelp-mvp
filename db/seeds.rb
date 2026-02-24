# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

Restaurant.create!(name: "Chez Armand", address: "1 rue de Lyon", phone_number: "0402030405", category: "french")
Restaurant.create!(name: "Sushi Zen", address: "2 rue de Paris", phone_number: "0402030406", category: "japanese")
Restaurant.create!(name: "Pasta Mia", address: "3 rue du jardin", phone_number: "0402061407", category: "italian")
Restaurant.create!(name: "Wok Express", address: "4 rue de Lille", phone_number: "0402030408", category: "chinese")
Restaurant.create!(name: "Bruxelles Fries", address: "5 rue de Bruxelles", phone_number: "0402030409", category: "belgian")
