class ManasaStones
	def initialize(n,a,b)
		@n=n
		@a=a
		@b=b
	end
	def listAllValues()
		#This is all about finding the series
		arr=Array.new
		for i in 1..@n
			arr<<(@n-i)*@a+(i-1)*@b
		end
		arr.uniq!
		arr.sort!
		arr.each {|element|
			print "#{element} "
		}
		print "\n"
	end
end

test_cases=gets.chomp.to_i
square_arr=[]
array_of_objects=[]
test_cases.times {
	obj=ManasaStones.new(gets.chomp.to_i,gets.chomp.to_i,gets.chomp.to_i)
	array_of_objects<<obj
}
array_of_objects.each { |object|
	object.listAllValues()

}
