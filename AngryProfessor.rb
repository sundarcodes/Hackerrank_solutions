class AngryProfessorClass
def initialize(tot_num_students,min_students_reqd,arrival_time)
	@tot_num_students=tot_num_students
	@min_students_reqd=min_students_reqd
	@arrival_time=arrival_time
end
def checkClassStatus
	students_arrived_before_time=0
	@arrival_time.each {|element|
		if (element <= 0)
			students_arrived_before_time+=1
		end
	}
	if students_arrived_before_time < @min_students_reqd
		return false
	else
		return true
	end
end

end



number_of_testcases=gets.chomp.to_i
arrAngryProfClass=Array.new
for i in 0...number_of_testcases
	line1=gets.chomp.split(" ")
	tot_students=line1[0].to_i
	min_students=line1[1].to_i
	arrival_time=gets.chomp.split(" ").map(&:to_i)
	angryProfObj = AngryProfessorClass.new(tot_students,min_students,arrival_time)
	arrAngryProfClass << angryProfObj
end

arrAngryProfClass.each {|object|
puts object.checkClassStatus()?"NO":"YES"

}