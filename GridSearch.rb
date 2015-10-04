class GridSearch
	def initialize(string_array,pattern_array)
		@string_array=string_array
		@pattern_array=pattern_array
		#print @string_array
		#print @pattern_array
	end
	def doesPatternExist?
		#First check if each row in pattern array is present in the string array 
		#Check if it starts from the same position as the previous row index
		pattern_found=false
		i=j=0;
		tot_size_string_array=@string_array.length
		tot_size_pattern_array=@pattern_array.length
		start_search_position=0
		while i < tot_size_string_array
			index_id=@string_array[i].index(@pattern_array[j],start_search_position)
			if (index_id != nil)
				#This means there is a pattern match at i and j
				if (start_search_position==index_id)
					i+=1
					j+=1
					if i==tot_size_string_array-1 && j==tot_size_pattern_array-1
						pattern_found=true
						break
					end
				else
					#We have lost it. no match here. We have to start afresh
					i=j=0
					start_search_position+=1
				end
			elsif 
				#This means there is no pattern match
				i+=1
				start_search_position=0
			end
		end
		return pattern_found
	end
end


number_of_test_Cases=gets.chomp.to_i
array_of_objects=Array.new
number_of_test_Cases.times {
	input_arr=gets.chomp.split(" ")
	base_arr_size=input_arr[0].to_i
	arr_base_objs=Array.new
	arr_patt_objs=Array.new
	base_arr_size.times {
		arr_base_objs << gets.chomp
	}
	input_arr=gets.chomp.split(" ")
	pattern_arr_size=input_arr[0].to_i
	pattern_arr_size.times {
		arr_patt_objs << gets.chomp
	}
	obj1=GridSearch.new(arr_base_objs,arr_patt_objs)
	array_of_objects << obj1
}

array_of_objects.each { |object|
	if object.doesPatternExist?
		puts "YES"
	else
		puts "NO"
	end
}