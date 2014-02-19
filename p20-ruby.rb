def factorial(num)
  total = 1
  (1..num).each do |i|
    total *= i
  end
  sum_digits(total)
end

def sum_digits(num)
  sum = 0
  num.to_s.split(//).each do |x|
    sum += x.to_i
  end
  sum
end

s = Time.now
10_000.times do |i|
  factorial(100)
end
puts Time.now - s
