require 'inject'

describe Array do 

let(:array) {[2,3,4]}

it 'should be able to multiply the values of an array by 2' do
	expect(array.jectin(1) {|x| x * 2}).to eq(19)
end

it 'should contain an argument to define JECTIN' do
		expect{array.jectin() {|x| x * 2}}.to raise_error
	end

it 'should be able to do sum of numbers ' do
	expect(array.jectin(0) {|x| x + 2}).to eq(15)
end



	
end