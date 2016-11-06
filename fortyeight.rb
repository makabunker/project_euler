# finds the last 10 digits of the series 1 ** 1 + 2 ** 2 + ... + 1000 ** 1000

def end_digits(number)
  sum = 0
  (1..number).each {|i|
    sum += i ** i
  }
  digits = sum.to_s.chars.map(&:to_i)
  index = digits.length - 1
  last_ten = []
  ((index - 9)..index).each {|i|
    last_ten.push(digits[i])
  }
  print last_ten
end

puts "please enter largest digit: "
number = gets.chomp.to_i

end_digits(number)
