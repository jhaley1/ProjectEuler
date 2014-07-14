def amicable_number?(num)
  original_divisor_sum = get_proper_divisors(num)
  second_divisor_sum = get_proper_divisors(original_divisor_sum)

  return false if original_divisor_sum == second_divisor_sum
  num == second_divisor_sum
end

def get_proper_divisors(num)
  sum = 0

  (1..num / 2).each do |i|
    sum += i if num % i == 0
  end

  sum
end

def amicable_numbers(limit)
  sum = 0

  (2...limit).each do |num|
    sum += num if amicable_number?(num)
    puts num if amicable_number?(num)
  end

  sum
end

puts amicable_numbers(10_000)
