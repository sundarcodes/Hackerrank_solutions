def findNumberOfChanges(str)
	len=str.length
	return -1 if (len%2!=0)
	tot_num_changes=0
	str1=str[0..len/2-1]
	str2=str[len/2..len-1]
	#Make a hash of characters and its occurence
	hash_str1=Hash.new
	hash_str2=Hash.new
	str1.each_char do |char|
		if (hash_str1.has_key?(char.to_sym))
			next
		end
		count=str1.count(char)
		hash_str1[char.to_sym]=count
	end
	str2.each_char do |char|
		if (hash_str2.has_key?(char.to_sym))
			next
		end
		count=str2.count(char)
		hash_str2[char.to_sym]=count
	end

	#Compare for hash keys
	#puts "In first comp"
=begin
	print hash_str1
	print " 1 done \n"
	print hash_str2
	print "2 done\n"
=end
	hash_str2.each_key do |key|
		if !hash_str1.has_key?(key)
			#print  "#{key}\t"
			tot_num_changes+=hash_str2[key]
		elsif hash_str1[key]<hash_str2[key]
			tot_num_changes+=(hash_str1[key]-hash_str2[key]).abs
		end
	end
	return tot_num_changes
end

t=gets.chomp.to_i
arr_str=Array.new
t.times {
	arr_str << gets.chomp
}

arr_str.each do |str|
	puts findNumberOfChanges(str)
end
