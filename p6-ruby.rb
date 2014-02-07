def sum_of_squares
  (1..100).inject do |sum, num|
    sum += num ** 2
    sum
  end
end

def square_of_sum
  (1..100).inject(:+) ** 2
end

def difference
   square_of_sum - sum_of_squares
end

s = Time.now
10000.times { difference }
puts Time.now - s
