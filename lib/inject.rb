class Array

def jectin(args, &block)
	sum = args
	self.each do|x|
		sum += yield(x)
	end
	sum
end
end

 # p [2,3,4].jectin() {|x| x * 2}


