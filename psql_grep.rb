v = %x(psql -l|grep dongxi_production | wc -l).strip
puts "v: " + v
