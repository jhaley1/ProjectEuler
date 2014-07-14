def self_powers(max)
  total = 0
  (1..max).each do |i|
    total += i ** i
  end
  total.to_s[-10..-1]
end

s = Time.now
10_000.times do |i|
  self_powers(1000)
end
puts Time.now - s
