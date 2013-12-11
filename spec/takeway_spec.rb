require 'takeway'

describe Takeway do

  context 'Store set up' do

    let(:takeway) { Takeway.new }

    # You don't really need this test, or the others
    # The goal of the class is to allow placing an order
    # Everything else is optional, you don't have to have it at all
    # So, you wrote and tested a few methods that aren't strictly required
    # but you didn't write and test the most important method that 
    # would allow you to place an order – why?
    it 'should have a list' do
    	expect(takeway.list).not_to be_empty
    end
    
  	it 'should list the available products and prices' do
     output = takeway.product_list
     expect(output).to eq("The Champagne in our store costs £75, The Vodka in our store costs £57, The Wine in our store costs £42")
    end

  	it 'should list the available services and prices' do
     output = takeway.service_list
     expect(output).to eq("The Delivery will be £14")
    end

  end

end