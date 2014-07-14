@factorials = {}

def factorial(num)
  return @factorials[num] if @factorials[num]
  total = 1
  (1..num).each do |i|
    total *= i
  end
  @factorials[num] = total
  total
end

def formula(n, r)
  factorial(n) / (factorial(r) * factorial(n - r))
end

def combinatoric_selections
  count = 0

  (1..100).each do |n|
    (1..100).each do |r|
      break if r > n
      tmp = formula(n, r)
      count += 1 if tmp > 1_000_000
    end
  end

  count
end

puts combinatoric_selections
