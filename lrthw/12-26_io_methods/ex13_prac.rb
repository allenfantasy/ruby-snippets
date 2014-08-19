#first, second, third = ARGV           # unpack ARGV

puts "The script is called: #{$0}"
ARGV.each do |arg|
  puts arg
end
#puts "Your first variable is: #{first}"
#puts "Your second variable is: #{second}"
#puts "Your third variable is: #{third}"
