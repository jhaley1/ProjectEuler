def amicable_numbers?(num)
  result = sum_of_proper_divisors(num)
  sum_of_proper_divisors(result) == num
end

def sum_of_proper_divisors(num)
  sum = 0
  (1..num / 2).each do |i|
    sum += i if num % i == 0
  end
  sum
end

def amicable(max)
  sum = 0
  (1..max).each do |i|
    sum += i if amicable_numbers?(i)
  end
  sum
end

puts amicable(10_000)
