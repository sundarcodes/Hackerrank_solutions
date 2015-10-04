actual_date=gets.chomp.split(" ")
expected_date=gets.chomp.split(" ")

act_yr=actual_date[2].to_i
act_mon=actual_date[1].to_i
act_day=actual_date[0].to_i

exp_yr=expected_date[2].to_i
exp_mon=expected_date[1].to_i
exp_day=expected_date[0].to_i

fine=0
if act_yr > exp_yr
	fine=10000
elsif act_yr == exp_yr
	if act_mon > exp_mon
		fine=(act_mon-exp_mon)*500
	elsif act_mon == exp_mon
		if act_day > exp_day
			fine=(act_day-exp_day)*15
		end
	end
end

puts fine