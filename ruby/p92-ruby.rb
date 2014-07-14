def digit_chains_to_89(num)
  sum = num.to_s.split(//).map { |c| (c.to_i) ** 2 }.inject(:+)

  if sum == 89
    return true
  elsif sum == 1
    return false
  else
    digit_chains_to_89(sum)
  end
end

def square_digit_chains
  arrive_at_89 = 0

  (1...10_000_000).each do |num|
    arrive_at_89 += 1 if digit_chains_to_89(num)
  end

  arrive_at_89
end

puts square_digit_chains
