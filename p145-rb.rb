def sum_of_digits(num)
  digits = get_digits(num)
  digits.inject(:+)
end

def reverse(num)
  num.to_s.reverse.to_i
end

def get_digits(num)
  digits = []

  until num < 10
    divmod = num.divmod(10)
    num = divmod[0]
    digits << divmod[1]
  end

  digits << num

  digits
end

def only_odd_digits?(num)
  return false if num.even?

  until num < 10
    divmod = num.divmod(10)
    return false unless divmod[1].odd?
    num = divmod[0]
  end

  return false unless num.odd?
  true
end

def reversible?(num)
  sum = sum_of_digits(num)
  return false unless only_odd_digits?(sum)

  reverse = reverse(num)
  sum_reverse = sum_of_digits(reverse)
  return false unless only_odd_digits(sum_reverse)

  true
end

def reversible_numbers(limit)
  reversible_numbers = 0

  (1...limit).each do |num|
    reversible_numbers += 1 if reversible?(num)
  end

  reversible_numbers
end

# puts reversible_numbers(1_000_000_000)
puts reversible_numbers(1000) # 120
