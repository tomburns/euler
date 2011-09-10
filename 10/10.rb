def sieve_and_sum(range_size=10)
  candidates = []
  (2..range_size).each do |i|
    j = i * 2
    if not candidates[i] 
      candidates[j] = 1
      while j < range_size
        candidates[j] = 1 if not candidates[j]
        j += i
      end
    end
  end
  
  sum = 0
  
  candidates[2..range_size].each_with_index do |candidate, i|
    sum += i if not candidates[i]
  end
  puts sum - 1
end

sieve_and_sum(2000000)