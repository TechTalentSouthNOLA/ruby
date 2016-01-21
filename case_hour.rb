puts "What hour is it (0 to 23, 0 is midnight)?"
hour = gets.to_i

case hour
when 0..8
  puts "I'm sleepy"
when 9..11
  puts "Bring on the morning!"
when 12
  puts "I'm hungry"
when 13..14
  puts "Doing productive things..."
when 15
  puts "I need COFFEE"
else
  puts "Let's have a beverage."
end

# For ranges:
  # 0..3 includes both 0 and 3.
  # 0...3 includes 0 but does NOT include 3.