class Array

def jectin(args, &block)
	sum = args
	self.each do |x|
		sum = yield(sum, x)
	end
	sum
end
end

  # p [2,3,4].jectin(10) {|x,y| x * 2}


