

primes = [2, 3]
number = 4

while number < 200000
  is_prime = true
  x = 2
  while x <= number / 2

    if number % x == 0
      is_prime = false
      break
    end

    x += 1
  end

  if is_prime
    primes.push(number)
  end

  number += 1
end

sum = 0
primes.each do |i|
  sum += i
end

puts sum
