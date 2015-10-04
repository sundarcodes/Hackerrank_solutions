n=gets.chomp.to_i
list_num=gets.chomp.split(" ").map(&:to_i)
total_elements=list_num.length.to_f
pos_nums=neg_nums=zeros=0

list_num.each {|element|
	if (element > 0)
		pos_nums+=1
	elsif (element < 0)
		neg_nums+=1
	else
		zeros+=1
	end
}

puts (pos_nums/total_elements).round(3)
puts (neg_nums/total_elements).round(3)
puts (zeros/total_elements).round(3)