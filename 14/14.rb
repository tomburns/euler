def collatz_step(n=10)
  if n.even?
    n / 2
  else
    n*3 + 1
  end
end

def collatz(n=13)
  steps = 0
  curr = n
  until curr == 1
    curr = collatz_step(curr)
    steps += 1
  end
  steps
end

largest = 0
most_steps = 0
(1..1000000).each do |i|
  unless i.even?
    steps = collatz(i)
    largest = i if steps > most_steps
    most_steps = steps if steps > most_steps
  end
end

puts largest
