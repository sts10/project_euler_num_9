def triplet?(a, b, c)
  (a**2 + b**2 == c**2) && (a < b) && (b < c)
end 

def omni_triplet?(a,b,c)
  (a**2 + b**2 == c**2) || (c**2 + b**2 == a**2) || (a**2 + c**2 == b**2)
end 


def sum_one_thousand?(a,b,c)
  a + b + c == 1000
end 

def works?(a, b)
  c = (a**2 + b**2)**0.5
  c % 1 == 0 && sum_one_thousand?(a, b, c)
end 

def the_triplet
  a = 2 
  

  while (a < 1000)
    b = 2
    while (b < 1000)
      if works?(a,b)
        c = (a**2 + b**2)**0.5
        return (a*b*c)
      end
      b = b + 1
    end
    a = a + 1
  end 

end 