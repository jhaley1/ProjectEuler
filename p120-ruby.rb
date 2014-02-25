def get_remainder(a, n)
  return 2 if a.even?
  r = ((a - 1)**n + (a + 1)**n) % a ** 2
  puts r
  r
end

def square_remainders
  sum = 0
  (1..15).each do |a|
    puts "                       new number: #{a}           "
    (1..10).each do |n|
      sum += get_remainder(a, n)
    end
  end
  sum
end

puts get_remainder(5, 7)
puts square_remainders
