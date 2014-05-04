require_relative './spec_helper.rb'
require_relative '../calc.rb'

describe 'can recognize triplets' do 
  it 'knows that 3 4 5 is a triplet' do 
    @passing_triangle = Triangle.new(3,4)

    expect(@passing_triangle.makes_triplet?).to be(true)
  end 

  it 'knows that 2 4 5 is not a triplet' do 
    @failing_triangle = Triangle.new(2,4)

    expect(@failing_triangle.makes_triplet?).to be(false)
  end

end

describe "Find the triplet" do
  it 'can find the product of the three numbers that make up a pythagorean triplet and sum to 1000' do
    expect(find_the_triplet).to eq(31875000)
  end 
end
 