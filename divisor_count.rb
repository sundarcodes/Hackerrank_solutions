class Divisor_Count
	def initialize(num)
		@num=num
	end
	def getDivisorsCount()
		num_arr=Array.new
		num_int=@num.to_i
		count=0
		@num.each_char { |char|
			digit=char.to_i
			if (digit !=0)
				if num_int%digit == 0
					count+=1
				end
			end
			}
		return count
	end

end

number_of_test_Cases=gets.chomp.to_i
array_of_objects=Array.new
for testcase in 1..number_of_test_Cases
	obj1=Divisor_Count.new(gets.chomp)
	array_of_objects << obj1
end

array_of_objects.each { |object|
	puts object.getDivisorsCount()

}