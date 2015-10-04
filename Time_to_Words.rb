def getTimeInWords(hour,min)
	hash_word={
		1=> "one",
		2=> "two",
		3=> "three",
		4=> "four",
		5=> "five",
		6=> "six",
		7=> "seven",
		8=> "eight",
		9=> "nine",
		0=> "ten",
		11=> "eleven",
		12=> "twelve",
		13=> "thirteen",
		14=> "fourteen",
		15=> "quarter",
		16=> "sixteen",
		17=> "seventeen",
		18=> "eighteen",
		19=> "nineteen",
		20=> "twenty",
		21=> "twenty one",
		22=> "twenty two",
		23=> "twenty three",
		24=> "twenty four",
		25=> "twenty five",
		26=> "twenty six",
		27=> "twenty seven",
		28=> "twenty eight",
		29=> "twenty nine",
		30=> "half"				
	}

	hour_string=hash_word[hour.to_i]
	minute=min.to_i
	min_string=""
	if (minute == 0)
		min_string="#{hour_string} o' clock"
	elsif (minute <= 30)
		if (minute == 1)
			minutes_str="minute "
		elsif (minute != 15 && minute !=30)
			minutes_str="minutes "
		end
		min_string="#{hash_word[minute]} #{minutes_str}past #{hour_string}"
	else (minute > 30)
		if (hour.to_i == 12)
			hour_string="one"
		else
			hour_string=hash_word[hour.to_i+1]
		end
		minute=60-minute
		if (minute == 1)
			minutes_str="minute "
		elsif (minute != 15 && minute !=30)
			minutes_str="minutes "			
		end		
		min_string="#{hash_word[minute]} #{minutes_str}to #{hour_string}"
	end
	return min_string
end

puts getTimeInWords(gets.chomp,gets.chomp)
