def reverse(num)
  reverse = 0

  while num != 0
    reverse = (reverse * 10 + num % 10)
    num /= 10
  end

  reverse
end

def only_odd_digits?(num)
  while num > 0
    return false if (num % 10) % 2 == 0
    num /= 10
  end

  true
end

@reversible_numbers = {}

def reversible?(num)
  return false if num % 10 == 0
  return true if @reversible_numbers[num] == true
  reverse = reverse(num)
  sum = num + reverse

  return false unless only_odd_digits?(sum)

  @reversible_numbers[num] = true
  @reversible_numbers[reverse] = true

  true
end

def reversible_numbers(limit)
  reversible_numbers = 0

  (10...limit).each do |num|
    reversible_numbers += 1 if reversible?(num)
  end

  reversible_numbers
end

s = Time.now
puts reversible_numbers(1_000_000_000)
puts Time.now - s
puts reversible_numbers(1000) # 120
