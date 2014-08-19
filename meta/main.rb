require './module'

include M

puts "self: #{self}"
puts "class: #{self.class}"
#puts "singleton class: #{self.singleton_class}"
#puts "methods: #{self.methods.inspect}"
#puts "instance methods: #{self.methods.inspect}"
puts "singleton methods: #{self.singleton_methods.inspect}"




