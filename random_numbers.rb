i = 1
numbers = []
count_under_6 = 0

until i == 7
  i = rand(1..10)
  numbers << i
  puts i
  count_under_6 += 1 if i < 6
end

puts "There are #{count_under_6} numbers under 6."