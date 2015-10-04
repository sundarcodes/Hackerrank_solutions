def isFunny?(str)
	rev=str.reverse
	funny_string_found=true
	(1...str.length).each do |i|
		if (str[i].ord - str[i-1].ord).abs == (rev[i].ord - rev[i-1].ord).abs 
			next
		else
			funny_string_found=false
		end
	end
	return funny_string_found
end

t=gets.chomp.to_i
str_array=Array.new
t.times do
	str_array<<gets.chomp
end

str_array.each do |string|
	puts isFunny?(string) ? "Funny":"Not Funny"
end