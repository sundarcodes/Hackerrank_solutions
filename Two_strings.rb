def isSubstringPresent?(str1,str2)
	substring_found=false
	str1.each_char do |char|
		if (str2.include? char.to_s)
			substring_found=true
			break
		end
	end
	return substring_found
end

t=gets.chomp.to_i
outstr=""
t.times{
	if isSubstringPresent?(gets.chomp,gets.chomp)
		outstr=outstr+"YES"+"\n"
	else
		outstr=outstr+"NO"+"\n"
	end
}

print outstr