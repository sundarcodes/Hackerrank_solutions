class HelpSherlockHolmes
	public
	def initialize(num_digits)
		@num_digits=num_digits
	end

	def getLargeDecentNumber
		# First check if the number of digits is a multiple of 3
		# If yes we can set all digits as 5 and return
		str=""
		number_of_threes=0
		number_of_fives=0
		found_number = false
		if @num_digits%3 == 0
			number_of_fives=@num_digits
			found_number=true
		end
		# Now check if the remaninder or modulo of %3 is a multiple of 5
		quotient = @num_digits
		remainder = @num_digits%3
		while quotient >=1 && !found_number
			#Check if remainder is a multiple of 5
			if (remainder%5 == 0)
				number_of_threes=remainder
				number_of_fives=quotient-3
				found_number=true
				break
			else
				quotient=@num_digits-remainder
				remainder+=3
			end
		end

		# Now we have exhausted all possibilities of having the largest decent number with a 5 in
		# Now we need to check for 3

		quotient = @num_digits
		remainder = @num_digits%5
		while quotient >=1 && !found_number
			#Check if remainder is a multiple of 3
			if (remainder %3 == 0)
				number_of_fives=remainder
				numer_of_threes=quotient-5
				found_number=true
				break
			else
				quotient-=5
				remainder+=5
			end
		end

		if @num_digits%5 == 0 && !found_number
			number_of_threes=@num_digits
			found_number=true
		end

		if (!found_number)
			str="-1"
		else
			#puts number_of_fives
			#puts number_of_threes
			number_of_fives.times {str+="5"} if number_of_fives>0
			number_of_threes.times {str+="3"} if number_of_threes>0
		end
	return str
	end
end

number_of_test_Cases=gets.chomp.to_i
sherlockHolmesObjs=Array.new
for testcase in 1..number_of_test_Cases
	obj1=HelpSherlockHolmes.new(gets.chomp.to_i)
	sherlockHolmesObjs << obj1
end

sherlockHolmesObjs.each { |object|
	puts object.getLargeDecentNumber()

}