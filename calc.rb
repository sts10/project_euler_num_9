class Triangle 
  attr_reader :a, :b, :c, :product

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
  a = 2 
  while (a < 1000)
    b = 2
    while (b < 1000)
      @this_triangle = Triangle.new(a,b)
      if @this_triangle.qualifies?
        return @this_triangle.product
      end
      b = b + 1
    end
    a = a + 1
  end 

end 