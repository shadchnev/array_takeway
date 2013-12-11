class Array

  # why do you declare a block 
  # if you don't use it?
  def jectin(args, &block)
  	sum = args
    # the high-level logic is correct but
    # you don't take into account the scenario when
    # there will be no argument
  	self.each do |x|
      # why call it sum if it may be any operation?
      # the variable name is confusing
  		sum = yield(sum, x)
  	end
  	sum
  end
end

