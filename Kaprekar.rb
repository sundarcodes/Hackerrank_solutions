def isKaprekarNum?(num)
	return true if num==1
	sum=0
	square_of_num=num**2
	num_in_str=num.to_s
	square_of_num_in_str=square_of_num.to_s
	len_of_num=num_in_str.length
	#Add a small hack for length greater than 1 as we need to check the first n-1 digits as well
begin
	if (len_of_num>=2)
		(1...len_of_num).each do |i|	
			first_part_of_num=square_of_num_in_str[0,len_of_num-i].to_i
			second_part_of_num=square_of_num_in_str[len_of_num-i,square_of_num_in_str.length-1].to_i
			if (square_of_num_in_str[len_of_num-i] == "0" && square_of_num_in_str[len_of_num]=="0")
				next
			end
			sum=first_part_of_num+second_part_of_num if second_part_of_num!=0
			return true if sum==num
		end	
	end
end
	first_part_of_num=square_of_num_in_str[0,len_of_num].to_i
	second_part_of_num=square_of_num_in_str[len_of_num,square_of_num_in_str.length-1].to_i
	sum=first_part_of_num+second_part_of_num if second_part_of_num!=0
	return (sum==num)?true:false
end

out_str=""
start_range=gets.chomp.to_i
end_range=gets.chomp.to_i
(start_range..end_range).each do |num|
	if isKaprekarNum?(num)
		out_str+=num.to_s + " "
	else
		out_str+=""
	end
end

print out_str==""?"INVALID RANGE\n":out_str+"\n"