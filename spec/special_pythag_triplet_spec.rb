require_relative './spec_helper.rb'
require_relative '../calc.rb'

describe 'can recognize triplets' do 
  it 'knows that 3 4 5 is a triplet' do 
    expect(makes_triplet?(3,4)).to be(true)
  end 

  it 'knows that 2 4 5 is not a triplet' do 
    expect(makes_triplet?(2,4)).to be(false)
  end

end

describe "Find the triplet" do
  it 'can find the porduct of the three numbers that make up a pythagorean triplet and sum to 1000' do
    expect(the_triplet).to eq(31875000)
  end 
end
 