def checkPalindrome?(str)
	#Make a hash of characters and its occurence
	hash_str=Hash.new
	number_of_odd_occurences_char=0
	str.each_char do |char|
		if (hash_str.has_key?(char.to_sym))
			next
		end
		count=str.count(char)
		hash_str[char.to_sym]=count
		if (count%2!=0)
			number_of_odd_occurences_char+=1
		end
	end
=begin
	print hash_str
	print "\n"
	print number_of_odd_occurences_char
=end
	# For a anagram to be a palindrome, it should have only one digit with odd number of occurences and all other digits with even occurences
	return (number_of_odd_occurences_char==1 || number_of_odd_occurences_char==0)?true:false
end


puts checkPalindrome?(gets.chomp) ? "YES":"NO"