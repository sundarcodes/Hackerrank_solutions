class ChocolateFeast
	def initialize(total_money,chocolate_price,wrappers_to_choc)
		@total_money=total_money
		@chocolate_price=chocolate_price
		@wrappers_to_choc=wrappers_to_choc
	end
	def getTotNumChocs()
		tot_num_chocs=0
		#First get the number of chocs he can buy with this money in hand
		num_chocs=@total_money/@chocolate_price
		tot_num_chocs+=num_chocs
		#Now check how many chocs he can get with his wrappers
		while num_chocs>@wrappers_to_choc
			num_chocs_tmp=num_chocs/@wrappers_to_choc
			balance_choc=num_chocs%(@wrappers_to_choc)
			tot_num_chocs+=num_chocs_tmp
			num_chocs=num_chocs_tmp+balance_choc
		end
		if num_chocs == @wrappers_to_choc
			tot_num_chocs+=1
		end
		return tot_num_chocs
	end

end

number_of_test_Cases=gets.chomp.to_i
array_of_objects=Array.new
for testcase in 1..number_of_test_Cases
	input_arr=gets.chomp.split(" ").map(&:to_i)
	obj1=ChocolateFeast.new(input_arr[0],input_arr[1],input_arr[2])
	array_of_objects << obj1
end

array_of_objects.each { |object|
	puts object.getTotNumChocs()
}