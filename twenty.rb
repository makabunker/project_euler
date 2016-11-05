## Take any number n, find n!, then sum individual digits of n!
## e.g. n = 5, n! = 120, answer = 1 + 2 + 0 = 3

puts "Give me a number to work on: "
puts "> "
number = gets.chomp.to_i
total = 1
for i in 1..number
  total *= i
end

total_array = total.to_s.chars.map(&:to_i)

sum = 0
total_array.each {|i|
  sum += i
}
puts sum
