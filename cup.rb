class Cup # Two words would be smooshed like CoffeeCup
  # This makes our instance variable @drink_amount readable directly
  attr_reader :drink_amount

  def initialize
    # Pretend like these amounts are percentages
    @drink_amount = 0
    puts "I'm alive!"
  end

  def fill
    puts "Filling up!"
    @drink_amount = 100
  end

  def empty
    puts "Emptying out!"
    @drink_amount = 0
  end

  def sip(sip_amount = 5)
    puts "Taking a sip!"
    if sip_amount > @drink_amount
      puts "Oops, not much or any left! Sucking air. :("
      @drink_amount = 0
    else
      @drink_amount -= sip_amount
    end # if
  end # sip method

  # This is a helper method - if we didn't want to make @drink_amount readable directly, we can create a method that simply returns the value of @drink_amount
  def amount
    @drink_amount
  end

  # This is a class method - prepend the method name with 'self.'
  def self.what_am_i
    puts "I am a cup!"
  end
end

# cup1 = Cup.new
# # cup2 = Cup.new

# cup1.fill
# puts "cup1 has #{cup1.amount}"
# # puts "cup2 has #{cup2.amount}"
# cup1.empty

# cup1.sip
# puts "cup1 has #{cup1.amount}"
# cup1.sip(10)
# puts "cup1 has #{cup1.amount}"

# # cup1.empty
# # puts "cup1 has #{cup1.amount}"

