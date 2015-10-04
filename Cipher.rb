len=gets.chomp.to_i
str=gets.chomp
k=gets.chomp.to_i
str.each_char do |char|
	ascii_val=char.ord
	if (k>26)
		k=k%26
	end
	if (ascii_val>=65 && ascii_val<90) ||
		(ascii_val>=97 && ascii_val<122)
		print (ascii_val+k).chr
	elsif (ascii_val == 90 || ascii_val==122) && k!=0
		print (ascii_val-26+k).chr
	else
		print char
	end
end
print "\n"