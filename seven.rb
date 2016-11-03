## Definitely open to alternate/faster solutions as this took quite some
## time for the complier to do

## Make array to store primes and preload 2 and 3
primes = [2, 3]
number = 4

## check and push prime numbers until primes contains 10001 numbers
while primes.count < 10001
  is_prime = true
  x = 2
  while x <= number / 2 ## only need to check the first half of any given number

    if number % x == 0 ## if number is divisible by any number from 2 to number/2
      is_prime = false ## then flag as false prime and immediately break loop
      break
    end

    x += 1
  end

  if is_prime
    primes.push(number)
  end

  number += 1
end

puts primes.last
