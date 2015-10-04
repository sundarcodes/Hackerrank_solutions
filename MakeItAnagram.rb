def findNumberOfDels(str1,str2)
	tot_num_dels=0
	#Make a hash of characters and its occurence
	hash_str1=Hash.new
	hash_str2=Hash.new
	str1.each_char do |char|
		count=str1.count(char)
		hash_str1[char.to_sym]=count
	end
	str2.each_char do |char|
		count=str2.count(char)
		hash_str2[char.to_sym]=count
	end

	#Compare for hash keys
	#puts "In first comp"
=begin
	print hash_str1
	print "\n"
	print hash_str2
	print "\n"
=end
	hash_str1.each do |key,value|
		if !hash_str2.has_key?(key)
			#print  "#{key}\t"
			tot_num_dels+=hash_str1[key]
		else
			if hash_str1[key] != hash_str2[key]
				tot_num_dels += (hash_str1[key]-hash_str2[key]).abs
			end 
		end
	end
	#puts "\nIn secon comp"
	hash_str2.each_key do |key|
		if !hash_str1.has_key?(key)
			#print  "#{key}\t"
			tot_num_dels+=hash_str2[key]
		end
	end
	return tot_num_dels
end


puts findNumberOfDels(gets.chomp,gets.chomp)