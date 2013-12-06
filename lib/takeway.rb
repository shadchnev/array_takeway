class Takeway
#Menu description
MENU = [{:what => "Product", :type => "Champagne", :howmuch => "£75"},
				{:what => "Product", :type => "Vodka", :howmuch => "£57"},
				{:what => "Product", :type => "Wine", :howmuch => "£42"},
				{:what => "Service", :type => "Delivery", :howmuch => "£14"},
				]
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

# attr_reader:options
#   def initialize(options = {})
#     defaults = { :Bliny => 0, :Caviar => 0, :Kasha => 0, :Knish => 0}
#     @options = defaults.merge(options)
#   end
#   def order_total
#     total = Money.new(0, "GBP")
#     options.each do |dish, quantity|
#       total += MENU[dish] * quantity
#     end
#     total
#   end
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
