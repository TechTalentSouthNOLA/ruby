require_relative 'cup'

class MojoCup < Cup

  def initialize
    super
    puts "Welcome to Mojo Coffee House! Here is your new cup."
  end

  def add_foam
    puts "Adding foam"
    @drink_amount += 20
  end
end

cup = Cup.new
mojocup = MojoCup.new
# puts cup.class
# puts "#{cup.class.ancestors}"

puts mojocup.amount
mojocup.add_foam
puts mojocup.amount

