def count_occurences_nos(arr)
	arr_count=Array.new
	(0..99).each do |x|
		arr_count[x]=0
	end
	arr.each do |element|
		arr_count[element]+=1
	end
	(0..99).each do |x|
		print "#{arr_count[x]} "
	end
	puts
end

gets
count_occurences_nos(gets.chomp.split(" ").map(&:to_i))
