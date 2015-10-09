len=gets.chomp.to_i
str=gets.chomp
k=gets.chomp.to_i
if (k>26)
	k=k%26
end
str.each_char do |char|
	ascii_val=char.ord
	if (ascii_val>=65 && ascii_val<=90)
		if (ascii_val+k>90)
			print (ascii_val+k-26).chr
		else
			print (ascii_val+k).chr
		end
	elsif(ascii_val>=97 && ascii_val<=122)
		if (ascii_val+k>122)
			print (ascii_val+k-26).chr
		else
			print (ascii_val+k).chr
		end
	else
		print char
	end
end
print "\n"
