require 'benchmark'

class FindMaxCombo
	def initialize(arr_people_topics)
		@num_of_people=arr_people_topics.length
		#@num_of_topics=arr_people_topics[0].length
		@arr_people_topics=arr_people_topics
		@max_topics_known=0
		@teams_knowing_max_topics=0
		#print "#{@num_of_people},#{@num_of_topics},#{@arr_people_topics}"
	end
	def checkMaxTopic(tot_num_topics)
		if (tot_num_topics>@max_topics_known)
			@max_topics_known=tot_num_topics
			@teams_knowing_max_topics=1
		elsif(tot_num_topics==@max_topics_known)
			@teams_knowing_max_topics+=1
		end
	end
	def findMaxResults()
		arr_combinations=Array.new
		#puts Benchmark.measure {arr_combinations=((0...@num_of_people).to_a).combination(2).to_a}
		arr_combinations=((0...@num_of_people).to_a).combination(2).to_a
		#puts Benchmark.measure {
		arr_combinations.each do |combination|
				topics_known_str=(@arr_people_topics[combination[0]]|@arr_people_topics[combination[1]]).to_s(2)
				max_topics=topics_known_str.count("1")
				checkMaxTopic(max_topics)
		end
	#}
	end
	def printResults()
		puts @max_topics_known
		puts @teams_knowing_max_topics
	end
end

n,m=gets.chomp.split(" ").map(&:to_i)
ppl_topics_arr = Array.new
n.times do
	topics=gets.chomp.to_i(2)
	ppl_topics_arr<<topics
end

objMaxCombo=FindMaxCombo.new(ppl_topics_arr)
objMaxCombo.findMaxResults()
objMaxCombo.printResults()