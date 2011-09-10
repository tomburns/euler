file = File.new("13.txt")

numbers = []

while line = file.gets
  numbers.push line.to_i
end

sum = numbers.inject(:+)

puts sum.to_s[0,10]

