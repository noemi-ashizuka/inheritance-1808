require_relative "chef"

class Restaurant
  attr_reader :name, :location, :chef
  # attr_writer :capacity
  attr_accessor :capacity

  def initialize(name, location, category, capacity, chef_name)
    @name = name # string
    @location = location # string
    @category = category # string
    @capacity = capacity # integer
    @chef = Chef.new(chef_name, self) # ?
    @clients = []
  end

  def make_reservation(name)
    @clients << name
  end

  def display_reservations
    puts "=" * 20
    puts "#{name}'s reservations:"
    @clients.each_with_index do |client, index|
      puts "#{index + 1} - #{client}"
    end
  end

  def open?
    Time.now.hour >= 18 && Time.now.hour <= 22
  end

  def closed?
    !open?
  end

  # class method
  def self.categories
    ["japanese", "french", "italian", "chinese"]
  end

  def self.average_salary(city, instance)
    case city
    when "Tokyo" then "¥1200"
    when "Osaka" then "¥1100"
    when "Kyoto" then "¥1000"
    else raise Exception.new("no data for #{city}")
    end
  end

  # the keyword self can be used in a method to call the instance but a method already has the instance
  def popularity_review
    # self in an instance method is the instance itself
    if @clients.size > 10
      "#{self.upcased_name} is very popular!" # just name works, no need to specify self
    else
      "#{self.upcased_name} is not very popular!"
    end
  end

  def upcased_name
    @name.upcase
  end

  # def name
  #   @name
  # end
end

# class Ramen < Restaurant; end
