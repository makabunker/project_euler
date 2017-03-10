num = 2 ** 1000
digits = num.to_s.chars.map(&:to_i)
solution = digits.reduce(:+)
p solution
