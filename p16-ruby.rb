s = Time.now
10_000.times do |i|
  (2**1000).to_s.split(//).map{ |i| i.to_i }.inject(:+)
end
puts Time.now - s


s = Time.now
10_000.times do |i|
  sum = 0
  (2**1000).to_s.split(//).each do |x|
    sum += x.to_i
  end
end
puts Time.now - s


s = Time.now
10_000.times do |i|
  test = (2**1000)
  sum = 0
  until test == 0
    arr = test.divmod(10)
    test = arr.first
    sum += arr.last
  end
end
puts Time.now - s
