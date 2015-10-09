class ServiceLane
	def initialize(length,segments_array)
		@length=length
		@segments_array=segments_array
		#print @segments_array
	end
	def getMaxVehicleAllowed(start_index,end_index)
		min=@segments_array[start_index]
		for i in start_index..end_index
			#puts min
			#puts @segments_array[i]
			if @segments_array[i] < min
				min = @segments_array[i]
			end
			#print "\nMin is #{min}..i is #{i}..segment_array value is #{@segments_array[i]}"
		end
		return min
	end
end

input_line1=gets.chomp.split(" ")
freeway_segments=input_line1[0].to_i
number_of_test_Cases=input_line1[1].to_i
segments_array=gets.chomp.split(" ").map(&:to_i)
objServiceLane=ServiceLane.new(freeway_segments,segments_array)
output_array = Array.new
for testcase in 1..number_of_test_Cases
	input_arr=gets.chomp.split(" ")
	output_array << objServiceLane.getMaxVehicleAllowed(input_arr[0].to_i,input_arr[1].to_i)
	#print output_array
end

output_array.each { |object|
	puts object
}