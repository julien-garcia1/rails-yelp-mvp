# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
Julien_burger = { name: "Julien burger", address: "12 street Hello, London", category: "japanese" }
Toto = { name: "Toto", address: "248 Toto Street, London", category: "french" }
Pasta_kingdom = { name: "Pasta kingdom", address: "1 Kingdom of pasta, London E3 2ZE", category: "chinese" }

[ dishoom, pizza_east, Julien_burger, Toto, Pasta_kingdom ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
