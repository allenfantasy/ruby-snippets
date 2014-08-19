File.open(ARGV[1],'w') {|f| f.write(File.open(ARGV[0]).read)}
