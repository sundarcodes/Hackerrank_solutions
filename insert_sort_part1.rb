def insert_sort(arr)
	len=arr.length
	key=arr[len-1]
	j=len-2
	while(j>=0)
		if key>arr[j]
			break
		else
			arr[j+1]=arr[j]
		end
		print_Arr(arr)
		j-=1
	end
	arr[j+1]=key
	print_Arr(arr)
end

def print_Arr(arr)
	arr.each do |element|
		print "#{element} "
	end
	print "\n"
end

count=gets.chomp.to_i
insert_sort(gets.chomp.split(" ").map(&:to_i))