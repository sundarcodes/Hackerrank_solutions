class SherlockSquares
	def initialize(start,end_num)
		@start=start
		@end=end_num
	end

	def findSquares
		start_int=Math.sqrt(@start).floor
		end_int=Math.sqrt(@end).ceil
		arr_squares_list = Array.new
		for i in start_int..end_int
			sq_num=i**2
			if (sq_num >= @start && sq_num <= @end)
				arr_squares_list << sq_num
			end
		end
		return arr_squares_list.length.to_s	
	end
end

number_of_test_Cases=gets.chomp.to_i
array_of_objects=Array.new
for testcase in 1..number_of_test_Cases
	input_arr=gets.chomp.split(" ")
	obj1=SherlockSquares.new(input_arr[0].to_i,input_arr[1].to_i)
	array_of_objects << obj1
end

array_of_objects.each { |object|
	puts object.findSquares()

}