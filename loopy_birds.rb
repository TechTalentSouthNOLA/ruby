# NOT D.R.Y. and very annoying to write all the things
# puts "1 bird on a wire, AH AH AH!"
# puts "2 birds on a wire, AH AH AH!"
# puts "3 birds on a wire, AH AH AH!"
# puts "4 birds on a wire, AH AH AH!"

# Loops are better!
# puts "1 bird on a wire, AH AH AH!"

# But don't do this IRL because it's C-ish and JavaScript-ish
# for n in 2..100
#   puts "#{n} birds on a wire - AH AH AH!"
# end

# TIMES LOOPS
# 9.times do |popcorn|
#   puts "#{popcorn + 2} birds on a wire - AH AH AH!"
# end

# 3.times do
#   puts "She loves you, yeah, yeah, yeah!"
# end

# 2.upto(10) do |n|
#   puts "#{n} birds on a wire - AH AH AH!"
# end

# Curly brackets are the same as do ({) and end (}).
# 2.upto(10){ |n| puts "#{n} birds on a wire - Ah AH AH!" }
# 10.downto(2){ |n| puts "#{n} birds on a wire - Ah AH AH!" }

# EACH LOOPS
# (5...10).each do |popcorn|
#   puts "#{popcorn} kernels of yummy!"
# end

fruit = ["apple", "orange", [1,2,3], "kiwi"]

fruit.each_with_index do |fruit_item, index|
  puts "#{fruit_item} with index #{index}"
end

