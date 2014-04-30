require_relative './spec_helper.rb'
require_relative '../calc.rb'

describe 'can recognize triplets' do 
  it 'knows that 3 4 5 is a triplet' do 
    expect(omni_triplet?(3,4,5)).to be(true)
  end 

  it 'knows that 2 4 5 is not a triplet' do 
    expect(omni_triplet?(2,4,5)).to be(false)
  end

  it 'knows that 3 5 4 is a triplet' do 
    expect(omni_triplet?(3,5,4)).to be(true)
  end
end

describe "Find the triplet" do
  it 'can find the porduct of the three numbers that make up a pythagorean triplet and sum to 1000' do
    expect(smallest_multiple).to eq(31875000)
  end 
end
 