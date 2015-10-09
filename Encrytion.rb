def encryptString(str)
	len=str.length
	sqrt=Math.sqrt(len)
	row=sqrt.floor
	column=sqrt.ceil
	if (row*column) < len
		row+=1
	end
	matrix_arr=Array.new()
	index=0
	(0..row).each do |i|
		matrix_arr << str[index,column]
		index+=column
	end
	(0...column).each do |j|
		(0...row).each do |i|
			print matrix_arr[i][j]
		end
		print " "
	end
	print "\n"
end


encryptString(gets.chomp)