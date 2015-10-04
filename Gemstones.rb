def findGemElements(str_array)
	#Find the smallest array of the lot
	str_array.sort!
	comp_array=str_array[0]
	tmp=comp_array
	(1...str_array.length).each do |i|
		comp_array.each_char do |element|
			#puts str_array[i]
			if !(str_array[i].include? element.to_s)
				tmp.delete!(element)
			end
		end
	end
	#print str_array[0]
	#puts tmp
	return tmp.split("").uniq.length
end

t=gets.chomp.to_i
str_arr=Array.new
t.times do
	str_arr << gets.chomp
end
puts findGemElements(str_arr)