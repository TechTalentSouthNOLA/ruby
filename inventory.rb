class Inventory

  def initialize
    @inventory = {dogs: 10, cats: 12}
  end

  def start
    # Keep running program unless user selects something not on menu or 9
    loop do
      action = get_action

      case action
      when 1
        add_item
      when 2
        remove_item
      else
        break
      end
    end

    puts "Thanks for playing!"
  end

  private

  def get_action
    puts "What do you want to do?"
    puts " 1 = change an item"
    puts " 2 = remove an item"
    puts " 9 = quit"
    gets.to_i
  end

  def add_item
    puts "Which item do you want to change?"
    item = get_item

    puts "What is the new value of #{item}?"
    @inventory[item] = gets.to_i
  end

  def get_item
    @inventory.each do |item, value|
      puts "  #{item}:  #{value}"
    end

    print " enter item > "
    gets.chomp.to_sym
  end
end

inventory = Inventory.new
inventory.start