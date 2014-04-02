class Fixnum
  @@primes = [2]

  def prime?
    return false if self == 1
    return true if @@primes[self]
    max = Math.sqrt(self).round(0)

    (2..max).each do |i|
      return false if self % i == 0
    end

    @@primes << self
    true
  end
end

def truncatable_prime?(num)
  s = num.to_s
  length = s.length
  num_r = s.reverse.to_i
  i = 10

  until length == 1
    start = num.divmod(i)[0]
    finish = num_r.divmod(i)[0]
    num = num.divmod(i)[0]
    num_r = num_r.divmod(i)[0]
    return false unless start.prime? and finish.prime?

    length -= 1
    i *= 1
  end

  true
end

def truncatable_primes
  num_of_truncatable_primes = 0
  sum = 0
  i = 11

  until num_of_truncatable_primes == 11
    if i.odd? && i.prime? && truncatable_prime?(i)
      sum += i
      num_of_truncatable_primes += 1
    end
    i += 1
  end

  sum
end

puts truncatable_primes
# puts truncatable_prime?(3797)
# puts truncatable_prime?(739397)
