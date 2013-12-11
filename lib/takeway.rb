# Gianni, please pay attention to the indentation

class Takeway

  # Why create such a complex menu?
  # Why not just
  #   MENU = {:champagne => 75, :vodka => 57, :wine => 42}
  # ?

#Menu description
MENU = [{:what => "Product", :type => "Champagne", :howmuch => "£75"},
				{:what => "Product", :type => "Vodka", :howmuch => "£57"},
				{:what => "Product", :type => "Wine", :howmuch => "£42"},
				{:what => "Service", :type => "Delivery", :howmuch => "£14"},
				]

# As I've mentioned in the test, you didn't need these three methods at all
def list
    MENU.select do |item|
      your_list = []
      your_list << item[:what] + " " + item[:type]
      your_list
    end
 end
def product_list
	drinks = []
	MENU.each do |item|
	drinks	 << "The #{item[:type]} in our store costs #{item[:howmuch]}" if item[:what] == "Product"
	end
	drinks.join(", ")
end
def service_list
	drinks = []
	MENU.each do |item|
	drinks	 << "The #{item[:type]} will be #{item[:howmuch]}" if item[:what] == "Service"
	end
	drinks.join(", and ")
end 
end
#------------------------------------------------------------
# 2nd Part - Placing the order

# attr_reader :selection

# Now, the following code is outside the Takeaway class
# So you're adding the methods to the top-level Object class,
# in particular you're overriding initialize() on the Object
# You never want to do this, this is dangerous

  def initialize
    @selection
  end

  def order_total
    # Gianni, you seem to be overcomplicating things
    # You don't need a Money class for this
    total = Money.new(0, "GBP")
    selection.each do |dish, quantity|
      total += MENU[dish] * quantity
    end
    total
  end
#   def order_ok? (total)
#     order_total == Money.new(total * 100, "GBP")
#   end
#   def place_order (total)
#     if order_ok? (total)
#     else
#       raise "The total isn't correct"
#     end
#   end
#   def order_complete_message
#     "Thank you! Your order was placed and will be delivered before #{(1.hour.from_now).strftime("%H:%M")}"
#   end
# end
