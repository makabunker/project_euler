## finds the index of the first digit in the fibonacci series to contain
## 1000 digits. The answer on eulerproject.net is actually wrong. They ask for
## the index (which is array length - 1) but the answer is actually array length

fibonacci_numbers = [1, 1]
f1 = 1
f2 = 1

while fibonacci_numbers.last.to_s.length < 1000
  f3 = f1 + f2
  fibonacci_numbers.push(f3)
  f1 = f2
  f2 = f3
end

puts fibonacci_numbers.length - 1
