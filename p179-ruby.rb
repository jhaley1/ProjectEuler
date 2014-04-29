def divisor_count(num)
  divisors = 0

  (num).downto(1).each do |i|
    divisors += 1 if num % i == 0
  end

  divisors
end

def consecutive_positive_divisors(limit)
  previous_divisor_count = 0
  count = 0

  (2...limit).each do |num|
    divisors = divisor_count(num)
    count += 1 if previous_divisor_count == divisors
    previous_divisor_count = divisors
  end

  count
end

puts consecutive_positive_divisors(10 ** 7)
