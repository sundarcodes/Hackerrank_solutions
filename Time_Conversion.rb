input_time=gets.chomp
time_arr = input_time.split(":")
am_or_pm=time_arr[2][-2,2]
if (am_or_pm == "AM")
	hours=time_arr[0].to_i
	if (hours == 12)
		hours="00";
	end
	hours="%02d" % hours.to_i
	puts "#{hours}:#{time_arr[1]}:#{input_time[-4,2]}"
else
	hours=time_arr[0].to_i
	if (hours != 12)
		hours=time_arr[0].to_i+12;
	end
	hours="%02d" % hours.to_i
	puts "#{hours}:#{time_arr[1]}:#{input_time[-4,2]}"
end