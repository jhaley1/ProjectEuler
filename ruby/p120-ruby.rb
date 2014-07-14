def get_remainder(a, n)
  return 2 if a.even?
  r = ((a - 1)**n + (a + 1)**n) % a ** 2
end

def square_remainders
  sum = 0
  (3..1000).each do |a|
    max = 0
    (1..1000).each do |n|
      tmp = get_remainder(a, n)
      max = tmp if tmp > max
    end
    sum += max
  end
  sum
end

puts square_remainders
