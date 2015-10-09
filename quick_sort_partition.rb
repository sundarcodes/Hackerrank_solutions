
def  partition(ar,first,last) 
	#last = last -1 
	#print "#{ar[first..last]}:#{first}:#{last}\t\n"
	return ar if first >= last
	return ar if first < 0 || first >= ar.length
	return ar if last < 0 || last >= ar.length
	#print "#{ar}:#{first}:#{last}\t\n"
	pivot=ar[last]
	i=nil
	j=first
	while(j<last)
		if (ar[j]>pivot )
			if(i.nil?)
				i=j
			end
		else
			if(!i.nil?)
				ar=swap(ar,j,i)
				i=i+1
			end
		$tot_swaps+=1
		end
		j+=1
	end
	#print "1-->#{ar}:#{first}:#{last}:#{i}\n"
	ar=swap(ar,i,last) if !i.nil?	
	$tot_swaps+=1
	i=last if i.nil?
	#puts ar.join(" ")
=begin	
	if i.nil?
		print "lower partition will not be called as i is nil"
	else
		print "Going to call lower partition with:#{first}:#{i-1}"
	end
=end
    partition(ar,first,i-1) unless i.nil?
=begin
    #print "Going to call upper partition with:#{i+1}:#{last}"
    if i.nil?
		print "upper partition will not be called as i is nil"
	else
		print "Going to call upper partition with:#{i+1}:#{last}"
	end
=end
	partition(ar,i+1,last) unless i.nil?
	#print ("Done with partion for #{ar}\n")
end


def swap(arr,i,j)
	return if i.nil? || i==j
	arr[i],arr[j]=arr[j],arr[i]
	#$tot_swaps+=1
	return arr
end

def  insertionSort(ar)
    i = 1
    tot_shifts=0
    while (i < ar.length)
        if (i > 0 && ar[i] < ar[i - 1])
            value = ar[i]
            j = i-1
            while (j >= 0 && value < ar[j])
                ar[j+1] = ar[j]
                j -= 1
                tot_shifts+=1
            end
            ar[j+1] = value
        end
        i += 1
    end
    return tot_shifts
end

$tot_swaps=0
cnt = gets.to_i
ar = STDIN.gets.chomp.split(" ").map{|x|x.to_i}
ar2=ar.clone
#ar2=
partition(ar,0,ar.length-1)
#puts $tot_swaps
insertion_shifts=insertionSort(ar2)
#print insertion_shifts
puts (insertion_shifts-$tot_swaps)