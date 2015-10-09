class Sticks
	def initialize(num_of_sticks,arr_sticks)
		@num_of_sticks=num_of_sticks
		@arr_sticks=arr_sticks
	end

	def getNumberOfChops
		@arr_sticks.sort!.reverse!
		total_chops=0
		until @arr_sticks.length == 0
			min=@arr_sticks.last
			count=@arr_sticks.count(min)
			puts @arr_sticks.length
			@arr_sticks.pop(count)
			total_chops+=count
		end
	end
end

num_of_sticks=gets.chomp.to_i
arr_sticks=gets.chomp.split(" ").map(&:to_i)
objSticks = Sticks.new(num_of_sticks,arr_sticks)
objSticks.getNumberOfChops()