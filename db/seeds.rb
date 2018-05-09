# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes =
  {
    name: "La Passarelle",
    address: "12 rue du vieux port,  13002 Marseille",
    phone_number: "21 23 43 54 45",
    category: "french"
  }
  {
    name: "La Tour d'Argent",
    address: "15 Quai de la Tournelle, 75005 Paris",
    phone_number: "01 43 54 23 31",
    category: "chinese"
  }
  {
    name: "Le poulpe",
    address: "14 alle du marchand",
    phone_number: "02 02 02 02 02",
    category: "french"
  }
  {
    name: "La Tour d'Or",
    address: "15 Quai de macron, 75005 Paris",
    phone_number: "12 45 55 54 44",
    category: "japanese"
  }
  {
    name: "Le monseigneur",
    address: "15 rue du bordel 75005 Paris",
    phone_number: "01 43 54 23 31",
    category: "belgian"
  }

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
