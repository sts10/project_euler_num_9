class Triangle 
  attr_reader :product

  def initialize(a,b)
    @a = a
    @b = b
    @c = (a**2 + b**2)**0.5
    @product = @a * @b * @c
  end 

  def sum_one_thousand?
    @a + @b + @c == 1000
  end 

  def makes_triplet?
    @c % 1 == 0 
  end

  def qualifies?
    makes_triplet? && sum_one_thousand?
  end 
end

def find_the_triplet
  (2..1000).detect do |a|
    (2..1000).detect do |b|
      @this_triangle = Triangle.new(a,b)
      @this_triangle.qualifies?
    end
  end
  
  @this_triangle.product
end 