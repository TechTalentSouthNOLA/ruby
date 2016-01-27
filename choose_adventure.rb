class Adventure

  def initialize
    @name = get_name
  end

  # Game loop
  def play
    loop do
      option = get_option

      case option
      when 1
        # Do stuff for option 1
      when 2
        # Do stuff for option 2
      else
        break
      end
    end

    puts "Thanks for playing!"
  end

  private

  def get_option
    puts "What would you like to do? (1=option 1, 2=option 2, 3=quit"
    gets.to_i
  end

  def get_name
    puts "Welcome to Choose Your Own Adventure! What is your name?"
    gets.chomp
  end
end

story = Adventure.new
story.play
