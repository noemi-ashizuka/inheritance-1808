class FastFood < Restaurant
  def initialize(name, location, category, capacity, prep_time)
    # Call the initialize in the parent class
    super(name, location, category, capacity)
    @prep_time = prep_time # integer, unique to fast food
    @clients = []
  end

  def display_reservations
    puts "No reservations here..."
  end

  def make_reservation(name)
    puts "Reservations are not accepted here..."
  end
end
