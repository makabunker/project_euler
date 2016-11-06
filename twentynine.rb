## for any two given numbers n and m, program finds the total number of distinct
## products formed when all the numbers 2..n are raised to every power from 2..m

## define a function that will take two numbers and perform all mathematics
def distinct_products(base, power)
  product_list = []
  pow = 2
  ## ##while loop raises each number 2..n to the power of 2. then repeats w/3..m
  while pow <= power
     (2..base).each {|b|
       product = b ** pow
       if product_list.include? product
       ## only push number to array if it is not currently in array
       else
         product_list.push(product)
       end
     }
     ## increment pow to redo the loop until all numbers have been calculated
     pow += 1
   end
   return product_list
end

puts "please enter your largest base value: "
base = gets.chomp.to_i
puts "please enter your largest power: "
power = gets.chomp.to_i

list = distinct_products(base, power)
puts list.count
