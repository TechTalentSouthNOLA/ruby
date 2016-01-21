# understands_loops = "nope"

# This is NOT preferred for this specific example
# while understands_loops != "yes"
#   puts "study more!"
#   understands_loops = gets.chomp
# end

# This is better for this
# until understands_loops == "yes"
#   puts "study more!"
#   understands_loops = gets.chomp
# end

# While and Until are great loops for when you are unsure when you want to stop looping.

# Only print even numbers
i = 2

while i <= 20
  puts i.to_s
  i += 2  # same as i = i + 2
end

# Possible iterators
# i += 1
# i -= 1
# i *= 2
# i /= 2
