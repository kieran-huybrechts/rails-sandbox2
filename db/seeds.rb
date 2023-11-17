# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



resto = Restaurant.new(name: "Shanti", address: "Woodstock")
resto2 = Restaurant.new(name: "Bob's", address: "Salt River")
resto3 = Restaurant.new(name: "Taishan", address: "Observatory")
resto.save
resto2.save
resto3.save
