def triplet?(a, b, c)
  (a**2 + b**2 == c**2) && (a < b) && (b < c)
end 

def omni_triplet?(a,b,c)
  (a**2 + b**2 == c**2) || (c**2 + b**2 == a**2) || (a**2 + c**2 == b**2)
end 


def sum_one_thousand?(a,b,c)
  a + b + c == 1000
end 

def the_triplet
  
end 