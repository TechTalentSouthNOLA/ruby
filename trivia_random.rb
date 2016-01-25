# This version allows you to randomize the question order
# and uses a more complex object for the questions and answers.

puts "********************************"
puts "   Welcome to my trivia app!"
puts "********************************"
puts "\nLet's get started...\n\n"

questions_and_answers = [
  {question: "Who sang Material Girl?", answer: "Madonna", id: 1},
  {question: "Who is NOT Michael Jackson's lover?", answer: "Billie Jean", id: 2},
  {question: "Who played Zoolander?", answer: "Ben Stiller", id: 3}
]

# students = [
#   {id: 1, first_name: 'Mo', last_name: 'Smith', age: 21, favorite_color: 'orange'},
#   {id: 2, first_name: 'Julia', last_name: 'Smith', age: 21, favorite_color: 'green'}
# ]

# Loop through all questions
questions_and_answers.shuffle.each do |hash|
  # Ask question
  puts hash[:question]

  # Get answer from user
  user_answer = gets.chomp

  # Compare to see if correct
  if user_answer == hash[:answer]
    # Tell them if they were right
    puts "Correct!!!!!\n\n"
  else
    puts "Um, nope.\n\n"
  end # if
end # each loop

puts "Thanks for playing Trivia!!"