#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

def sum_of_primes
  sum = 2
  (3...2_000_000).each do |i|
    sum += i if i.prime?
  end
  sum
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

s = Time.now
puts sum_of_primes
puts Time.now - s


def sieve_of_eratosthenes(max)
  sieve = Hash.new(true)
  p = 2

  sieve = sieve.map do |i|

  end
end
