def mults(max)
  mults_to_add = []
  (1...max).each do |i|
    mults_to_add << i if i % 3 == 0 || i % 5 == 0
  end
  a = mults_to_add.inject(:+)
end

s = Time.now
10000.times{ mults(1000) }
puts Time.now - s


def mults2(max)
  total = 0
  (1...max).each do |i|
    total += i if i % 3 == 0 || i % 5 == 0
  end
  total
end

s = Time.now
10000.times{ mults2(1000) }
puts Time.now - s


def mults3(max)
  (0...max).inject do |sum, i|
    sum += i if i % 3 == 0 || i % 5 == 0
    sum
  end
end

s = Time.now
10000.times{ mults3(1000) }
puts Time.now - s
