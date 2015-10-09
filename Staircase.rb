height_of_staircase=gets.chomp.to_i;
sym="#"
space=" "
for i in 1..height_of_staircase
	(height_of_staircase-i).times {print space}
	i.times {print "#{sym}"}
	print "\n"
end