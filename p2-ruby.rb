def fibs(max)
  seq = [0, 1]
  sum = 0
  max.times do |i|
    seq << seq[-1] + seq[-2]
    sum += seq[-1] if seq[-1].even?
    return sum if sum > 4_000_000
  end
  sum
end

puts fibs(1_000_000)
