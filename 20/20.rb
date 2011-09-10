def factorial(n=2)
  result = 1
  curr = n
  while curr >= 1
    result *= curr
    curr -= 1
  end
  result
end

def sum_of_digits(n=10)
  total = 0
  n.to_s.split("").each do |i|
    total += i.to_i
  end
  total
end

puts factorial(10)
puts sum_of_digits(factorial(10))
