class TarumHelper
	def initialize(num_black_gifts,num_white_gifts)
		@num_black_gifts=num_black_gifts
		@num_white_gifts=num_white_gifts
	end
	def getMin(a,b)
		return (a.rate<b.rate)?a:b
	end
	def getMax(a,b)
		return (a.rate>=b.rate)?a:b
	end
	def getMinCost(gift1,gift2,conversion_rate)
		if (conversion_rate >= gift1.rate && conversion_rate >= gift2.rate)
			return @num_black_gifts*gift1.rate + @num_white_gifts*gift2.rate
		end
		min=getMin(gift1,gift2)
		max=getMax(gift1,gift2)
		if (min.rate+conversion_rate<max.rate)
			return @num_black_gifts*min.rate + @num_white_gifts*min.rate + max.num*conversion_rate
		else
			return @num_black_gifts*gift1.rate + @num_white_gifts*gift2.rate
		end
	end
end

class Gift
	attr_accessor:color
	attr_accessor:rate
	attr_accessor:num
	def initialize(color,rate,num)
		@color=color
		@rate=rate
		@num=num
	end
end

t=gets.chomp.to_i
out_str=""
t.times do 
b,w=gets.chomp.split(" ").map(&:to_i)
b_cost,w_cost,c_cost=gets.chomp.split(" ").map(&:to_i)
black_gift_obj=Gift.new("B",b_cost,b)
white_gift_obj=Gift.new("W",w_cost,w)
objHelper=TarumHelper.new(b,w)
out_str+= objHelper.getMinCost(black_gift_obj,white_gift_obj,c_cost).to_s + "\n"
end

print out_str