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
        show_items
      when 2
        change_item
      when 3
        rename_item
      else
        break
      end
    end

    puts "Thanks for playing!"
  end

  # Anything listed under 'private' can only be called from within the class. For example, if you loaded this into irb, you would not be able to call get_action yourself.
  private

  def get_action
    puts "\nWhat do you want to do?"
    puts " 1 = show all items"
    puts " 2 = change an item"
    puts " 3 = rename an item"
    puts " 9 = quit"
    gets.to_i
  end

  def change_item
    puts "Which item do you want to change?"
    item = get_item

    puts "What is the new value of #{item}?"
    @inventory[item] = gets.to_i
  end

  def get_item
    show_items

    print " enter item > "
    # to_sym converts the string into a symbol
    gets.chomp.to_sym
  end

  def show_items
    puts "\n" + "*" * 40
    @inventory.each do |item, value|
      puts "  #{item}:  #{value}"
    end
    puts "*" * 40 + "\n\n"
  end

  def rename_item
    puts "Which item do you want to rename?"
    item = get_item

    puts "What would you like to rename #{item} to?"
    new_name = gets.chomp.to_sym

    @inventory[new_name] = @inventory.delete(item)
  end
end

inventory = Inventory.new
inventory.start
