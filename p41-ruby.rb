class Fixnum
  @@primes = { 2 => true }

  def prime?
    max = Math.sqrt(self).round(0) + 1

    (2..max).each do |i|
      return true if @@primes[self]
      return false if self % i == 0
      if i > max
        @@primes[self] = true
        return true
      end
    end

    @@primes[self] = true
    true
  end

  def pandigital?
    self_str = self.to_s

    max = self_str.length.to_s
    ("1"..max).each do |c|
      return false unless self_str.include?(c)
    end

    true
  end
end

def pandigital_prime
  i = 2
  largest = 0

  until i == 7654321
    pandigital = false
    pandigital = i if i.prime? && i.pandigital?

    largest = i if pandigital && i > largest
    i += 1
  end

  largest
end

def pandigital_prime
  largest = 0
  keep_going = true

  9.downto(1).to_a.each do |num|
    perms = num.downto(1).to_a.permutation(num).to_a

    perms.each do |perm|
      perm = perm.join.to_i
      keep_going = false if perms[0] == perm && perm < largest
      largest = perm if perm.prime? and perm > largest
    end

    break unless keep_going
  end

  largest
end

puts pandigital_prime
