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

s = Time.now
10000.times{ fibs(1_000_000) }
puts Time.now - s


def fibs2
  i = 0
  sum = 0
  seq = [0, 1]
  while sum < 4_000_000
    seq << seq[-1] + seq[-2]
    sum += seq[-1] if seq[-1].even?
    i += 1
  end
  sum
end

s = Time.now
10000.times{ fibs2() }
puts Time.now - s
