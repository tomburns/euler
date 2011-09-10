def count_factors(number=2)
  factors = 1
  
  divisor = 1
  
  while divisor <= (number/2)
    if number % divisor == 0
      factors += 1
      #puts "working on #{number}... after #{divisor} factors = #{factors}"
    end
    divisor += 1
  end
  factors 
end

def triangle_number_factors(desired_number=1)
  triangle_number = 1
  next_addend = 2

  
  while count_factors(triangle_number) < desired_number
    triangle_number += next_addend
    nrbext_addend += 1
  end

  puts triangle_number
end


#puts count_factors(1)  
#puts count_factors(3)
#puts count_factors(6)
#puts count_factors(10)
#puts count_factors(15)
#puts count_factors(21)
#puts count_factors(28)

triangle_number_factors(500)
#THIS DOES NOT WORK
