def digits_less_than_two?(num)
  while num > 9
    dm = num.divmod(10)
    return false if dm[1] > 2
    num = dm[0]
  end

  return false if num > 2

  true
end

def find_small_digit_multiple(num)
  i = 1

  while true
    multiple = num * i
    puts multiple
    return multiple if digits_less_than_two?(multiple)
    i += 1
  end
end

def small_digit_multiples(limit)
  sum = 0

  (1..limit).each do |num|
    puts num
    multiple = find_small_digit_multiple(num)

    t = multiple / (num + 1)
    sum += t
  end

  sum
end

# puts small_digit_multiples(10_000)
# puts small_digit_multiples(100)
# puts digits_less_than_two?(52)
# puts find_small_digit_multiple(89)
puts find_small_digit_multiple(999)
