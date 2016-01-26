# Ruby review last question
class Vehicle

  def initialize(color = 'blue', type = 'car')
    @color = color
    @type = type   # car, truck, motorcycle, scooter, van
    # Added this code just for kicks
    puts "I'm a new #{@color} #{@type}."
  end

  def honk
    puts "Beep!"
  end
end

# my_car = Vehicle.new("blue", "convertible")
# my_car.honk