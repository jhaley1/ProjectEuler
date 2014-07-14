def sum_of_factors(num)
  sum = 0
  (1..num / 2).each { |i| sum += i if num % i == 0 }
  sum
end

def abundant?(num)
  sum_of_factors(num) > num
end

def abundant_numbers(max)
  abundant_numbers = {}
  (12..max).each { |num| abundant_numbers[num] = true if abundant?(num) }
  abundant_numbers
end

def nonabundant_numbers(an, max)
  abundant_sums = {}
  keys = an.keys

  keys.each do |a|
    keys.each do |b|
      key = a + b
      abundant_sums[key] = true if an[key] && key < max
    end
  end

  sum = 0
  (1..max).each do |i|
    sum += i unless abundant_sums[i]
  end

  sum
end

def nonabundant_sums(max)
  abundant_numbers = abundant_numbers(max)
  nonabundant_numbers(abundant_numbers, max)
end

s = Time.now
puts nonabundant_sums(28123)
puts Time.now - s
