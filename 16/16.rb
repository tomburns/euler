total = 0

(2**1000).to_s.split("").each do |i|
  total += i.to_i
end

puts total
