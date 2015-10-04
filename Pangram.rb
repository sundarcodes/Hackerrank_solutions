string=gets.chomp.downcase
alphabets_arr=Array('a'..'z')
#print alphabets_arr
alphabets_arr.each {|char|
	#puts char.to_s
	if ! (string.include? char.to_s)
		puts "not pangram"
		exit
	end
}
puts "pangram"