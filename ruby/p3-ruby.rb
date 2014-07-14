class Fixnum
  @@primes = [2]

  def prime?
    max = Math.sqrt(self).round(0) + 1

    @@primes.each do |i|
      return false if self % i == 0
      if i > max
        @@primes << self
        return true
      end
    end

    @@primes << self
    true
  end
end

def get_prime_factors(num)
  prime_factors = []

  (2..Math.sqrt(num)).each do |i|
    prime_factors << i if i.prime? && (num % i == 0)
  end

  prime_factors
end

def lpf(num)
  prime_factors = []
  prime_factors = get_prime_factors(num)
  prime_factors.max
end

# puts lpf(13195)
puts lpf(600_851_475_143)
