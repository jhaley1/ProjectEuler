def get_primes(max)
  @primes = @primes || []
  start = @primes.last || 2

  (start..max).each do |i|
    @primes << i if is_prime?(i)
  end
end

def is_prime?(num)
  return false if num == 1
  (2...num).each do |i|
    return false if num % i == 0
  end

  true
end
