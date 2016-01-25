end_phrase = "I'm a dummy."
sibling_says = ""

start_time = Time.now

# Stops only once it hits 'break'
loop do
  sibling_says = gets.chomp
  if sibling_says == end_phrase
    puts "I know you are!"
    break
  else
    puts sibling_says
  end
end

run_time = Time.now - start_time

puts "total run time was #{run_time}"
