digs = []
(1..500000).each {|i| digs.push(i.to_s.chars.map(&:to_i))}
digits = digs.flatten
sum = digits[0] * digits[9] * digits[99] * digits[999] * digits[9999] * digits[99999] * digits[999999]
 puts sum
