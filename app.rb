require_relative "restaurant"
require_relative "fast_food"
require_relative "fine_dining"

savoy = Restaurant.new("Savoy", "Meguro", "pizza", 15, "Bart")
# p savoy
savoy.chef.name
bart = savoy.chef
# p bart.restaurant
# p bart.restaurant.name
puts bart.cook_meal("pizza")

# puts "#{savoy.name} is in #{savoy.location}"
# puts "It has a capacity of #{savoy.capacity} people."

# puts "Savoy is remodeling..."

# savoy.capacity = 20

# puts "It has now a capacity of #{savoy.capacity} people."

# puts savoy.open?
# puts savoy.closed?

# savoy.make_reservation("Will")
# savoy.make_reservation("Tristan")

# p savoy

# shack = FastFood.new("Shake Shack", "Shinjuku", "burger", 100, 5)
# la_table = FineDining.new("La Table", "Meguro", "french", 30, 5)

# p shack
# p la_table.open?
# p la_table.name

# p shack.open?
# p la_table.closed?

# la_table.make_reservation("Esteban")
# la_table.make_reservation("Phyu Phyu")

# shack.make_reservation("Adam")

# la_table.display_reservations
# shack.display_reservations

# p Restaurant.categories
# p FineDining.categories

# p Restaurant.average_salary("Paris") # my error
# p savoy.average_salary("Tokyo") # error
# Restaurant.average_salary("Osaka")

# p savoy.popularity_review
# p la_table.popularity_review

# Chef.new("Bart", shack)
