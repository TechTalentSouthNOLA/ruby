# Defining my methods at the top so I can use them later

# Ask user for their name
def get_name
  puts "Hellooo there, what is your name?"
  gets.chomp
end

# Ask the user for their height in inches
def get_height_inches(user_name)
  puts "Hi, " + user_name + ", what is your height in inches?"
  print "Enter height > "

  gets.chomp.to_i
end

# Convert inches to cm
def inches_to_cm(height_inches)
  height_inches * 2.54
end

# Give them their height in cm
def output_height_cm(height_cm)
  puts "Your height in cm is " + height_cm.to_s
end

# Calling my methods to run the program
user_name = get_name
height_inches = get_height_inches(user_name)
height_cm = inches_to_cm(height_inches)
output_height_cm(height_cm)

# Calling my methods to run the program
user_name = get_name
height_inches = get_height_inches(user_name)
height_cm = inches_to_cm(height_inches)
output_height_cm(height_cm)
