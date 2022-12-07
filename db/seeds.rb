# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#Create a loop to generate fake data

products = Product.new(name: "comb" , price: "1223 ", description: " prot eudher dme", image_url: " feifj eirj")
products.save

#faker error, need to fix syntax on line 12 