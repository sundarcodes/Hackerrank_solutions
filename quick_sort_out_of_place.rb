def  partition(ar,first,last)
	#print "#{ar},#{first},#{last}\n"
	return ar if ar.length<=1 
	pivot=ar[first]
	small_arr=[]
	large_arr=[]
	for i in 1...last
		element=ar[i]
		if (element>pivot)
			large_arr<<element
		else
			small_arr<<element
		end
	end
small_arr=partition(small_arr,0,small_arr.length)
large_arr=partition(large_arr,0,large_arr.length) 
final_arr=small_arr+[pivot]+large_arr
puts final_arr.join(" ")
return final_arr
end


cnt = gets.to_i
ar = STDIN.gets.chomp.split(" ").map{|x|x.to_i}
partition(ar,0,ar.length)