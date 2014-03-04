def circular_primes
  circular_primes = []
  primes = []

  (1...1_000).each { |i| primes << i if i.prime? }

  primes.each do |num|
    is_circular_prime = true
    str = num.to_s.split(//)

    str.length.times do |i|
      a = str.shift
      str << a
      is_circular_prime = false if !primes.include?(str)
      break unless is_circular_prime
    end

    circular_primes << num if is_circular_prime
  end

  circular_primes.length
end

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


puts circular_primes
