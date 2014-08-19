name = "Zed A. Shaw"
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = "White"
hair = "Brown"

puts "Let's talk about %s." % name
puts "He's %d centimeters tall." % (height * 2.54) # convert to cm
puts "He's %d kilograms heavy." % (weight * 0.45359237) # convert to kg
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teech are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
    age, height, weight, age + height + weight]
