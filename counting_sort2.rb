def count_occurences_nos(hash)
	#print arr
	max=hash.keys.max
	(0..max).each do |i|
		if hash.has_key? i
			print hash[i].join(" ")
			print " "
		end
	end
	puts
end

t=gets.chomp.to_i
hash=Hash.new
count=0
t.times do
	input_arr=gets.chomp.split(" ")
	key=input_arr[0].to_i
	str=input_arr[1]
	str="-" if count<t/2
	if hash.has_key? key
		hash[key]<<str
	else	
		str_Arr=Array.new
		str_Arr<<str
		hash[key]=str_Arr
	
	end	
	count+=1
end
	
count_occurences_nos(hash)
