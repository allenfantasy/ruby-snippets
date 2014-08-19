require 'pathname'

#ruby_file = File.open "Ruby/misc/file.rb", "wb" do |file|
  #file.write("puts 'hello world!'")
#end
Dir[File.join("Ruby", "*.amr")].each do |amr|
  #puts amr
  File.delete amr
end

# puts dir.entries
#
# the following do the same
# dir.each do |file|
#   puts file
# end
