def digit_fifth_powers
  nums = []
  num = 2

  # 9^5 added 6 times isn't larger than any 7 digit number,
  # could calculate the exact number to speed it up
  until num == 999_999
    sum = 0
    num.to_s.split(//).each { |i| sum += i.to_i ** 5 }
    nums << num if num == sum
    num += 1
  end

  nums.inject(:+)
end

puts digit_fifth_powers
