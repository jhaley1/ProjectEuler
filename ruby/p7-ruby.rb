def primes
  primes = [2]
  i = 3
  until primes.length == 10_001
    primes << i if prime?(i)
    i += 1
  end
  primes.last
end

def prime?(num)
  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  true
end

s = Time.now
10000.times { primes }
puts Time.now - s
