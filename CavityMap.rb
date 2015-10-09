class CavityMap
	def initialize(size,square)
		@size=size
		@square=square
	end
	def findCavity()
		for i in 0...@size
			for j in 0...@size
				if isAdjacentStrictlySmaller?(i,j)
					print "X"
				else
					print @square[i][j]
				end
			end
			print "\n"
		end
	end
	
	private
	def isAdjacentStrictlySmaller?(i,j)
		if (i==0 or j==0 or i==(@size-1) or j==(@size-1))
			return false
		end
		element_value=@square[i][j]
		top_adj_value=@square[i-1][j]
		left_adj_value=@square[i][j-1]
		right_adj_value=@square[i][j+1]
		bot_adj_value=@square[i+1][j]
		#puts "value-->#{element_value}"
		if (element_value>top_adj_value && element_value>left_adj_value && element_value>right_adj_value && element_value>bot_adj_value )	
			return true
		else
			return false
		end
	end
end

size=gets.chomp.to_i
square_arr=[]
arr=[]
size.times {
	arr=gets.chomp.split("").map(&:to_i)
	square_arr<<arr
}
objCavityMap=CavityMap.new(size,square_arr)
objCavityMap.findCavity()