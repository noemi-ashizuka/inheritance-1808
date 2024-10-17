class Chef
  attr_reader :name, :restaurant


  def initialize(name, restaurant)
    @name = name # string
    @restaurant = restaurant # instance of RESTAURANT
  end

  def cook_meal(meal)
    "#{name} the chef of #{restaurant.name} cooked #{meal}"
  end
end
