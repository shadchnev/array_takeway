# please be more careful with indentation
require 'inject'

describe Array do 

  let(:array) {[2,3,4]}

  it 'should be able to multiply the values of an array by 2' do
  	expect(array.jectin(2) {|x,y| x + y * 2}).to eq(20)
  end

  # why do you expect calling it without arguments to raise an error?
  # The real inject() would be absolutely fine without an argument
  it 'should contain an argument to define JECTIN' do
  	expect{array.jectin() {|x,y| x * 2}}.to raise_error
  end

  it 'should be able to do sum of numbers ' do
  	expect(array.jectin(0) {|x,y| x + y + 2}).to eq(15)
  end

  it 'should be able to inject arrays ' do
  	expect(array.jectin([]) {|x,y| x << y**2 }).to eq([4,9,16])
  end
	
end