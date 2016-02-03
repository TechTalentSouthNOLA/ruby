require 'pry'

class RockPaperScissors

  # All the move options
  PLAYS = ['rock', 'paper', 'scissors']

  # Winning combinations
  WINS = [
    ['rock', 'scissors'],
    ['paper', 'rock'],
    ['scissors', 'paper']
  ]

  def play
    human_move = human_select_move
    computer_move = computer_select_move
    # binding.pry
    puts get_winner(human_move, computer_move)
  end

  private

  def human_select_move
    puts 'Rock, paper, or scissors?'
    gets.chomp.downcase
  end

  def computer_select_move
    computer_move = PLAYS.sample
    puts "Computer chose #{computer_move}."
    computer_move
  end

  def get_winner(human_move, computer_move)
    if human_move == computer_move
      "It's a draw!"
    else
      if WINS.include?([human_move, computer_move])
        "You win! #{human_move.capitalize} beats #{computer_move.capitalize}!"
      else
        "You lost. :( #{computer_move.capitalize} beats #{human_move.capitalize}."
      end #if
    end # if
  end # get_winner

end # class

game = RockPaperScissors.new
game.play
