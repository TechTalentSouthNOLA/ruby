puts "********************************"
puts "   Welcome to my trivia app!"
puts "********************************"
puts "\nLet's get started...\n\n"

questions_and_answers = {
  "Who sang Material Girl?" => "Madonna",
  "Who is NOT Michael Jackson's lover?" => "Billie Jean",
  "Who played Zoolander?" => "Ben Stiller"
}

# Loop through all questions
questions_and_answers.each do |question, answer|
  # Ask question
  puts question

  # Get answer from user
  user_answer = gets.chomp

  # Compare to see if correct
  if user_answer == answer
    # Tell them if they were right
    puts "Correct!!!!!\n\n"
  else
    puts "Um, nope.\n\n"
  end # if
end # each loop

puts "Thanks for playing Trivia!!"