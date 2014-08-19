name1 = "John"
name2 = "Mary"
puts "Hello %s, where is %s?" % [name1, name2] # Sherlock ?

name1 = "John"
name2 = "Mary"
puts "Hello #{name1}, where is #{name2}?" # interpolation

x = "There are #{10} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

puts "I said: #{x}."
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}" # `false` print 'false'

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e # Ruby create a new String object
