def findNumberOfDeletions(str_arr,match_string)
	tot_deletions_reqd=0
	start_index=0;
	aa_index=str_arr.index(match_string,start_index)
	if aa_index != nil
		while(aa_index!=nil) do
			tot_deletions_reqd+=1	
			start_index=aa_index+1
			aa_index=str_arr.index(match_string,start_index)
		end
	end
	return tot_deletions_reqd
end

t=gets.chomp.to_i

str_array=Array.new
t.times do 
str_array << gets.chomp
end

str_array.each do |str|
	puts findNumberOfDeletions(str,"AA")+findNumberOfDeletions(str,"BB")
end
