class FineDining < Restaurant 
  def initialize(name, location, category, capacity, stars)
    # Call the initialize in the parent class
    super(name, location, category, capacity)
    @stars = stars # unique to fine dining
    @clients = []
  end

  def open?
    # super is calling the method with the same name (open?) in the parent class
    # super || (Time.now.hour >= 10 && Time.now.hour <= 15)
    super || (10..15).cover?(Time.now.hour)
  end
end
