def powerful_digit_sum
  largest_digit_sum = 0

  (1..99).each do |a|
    (1..99).each do |b|
      pow = a ** b

      sum = 0
      pow.to_s.each_char { |c| sum += c.to_i }
      largest_digit_sum = sum if sum > largest_digit_sum
    end
  end

  largest_digit_sum
end

puts powerful_digit_sum
