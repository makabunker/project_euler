## find the difference between the sum of the squares of the first 100 numbers
## and the square of the sum of the first 100 numbers

sum_square = 0
square_sum = 0
sum = 0

(1..100).each do |i|
  square = i * i
  sum_square += square
end

(1..100).each do |i|
  sum += i
end

square_sum = sum * sum
puts square_sum - sum_square
