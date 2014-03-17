class Fixnum
  def substring_divisible?
    d = self.to_s

    num = (d[1] + d[2] + d[3]).to_i
    return false if num % 2 != 0
    num = (d[2] + d[3] + d[4]).to_i
    return false if num % 3 != 0
    num = (d[3] + d[4] + d[5]).to_i
    return false if num % 5 != 0
    num = (d[4] + d[5] + d[6]).to_i
    return false if num % 7 != 0
    num = (d[5] + d[6] + d[7]).to_i
    return false if num % 11 != 0
    num = (d[6] + d[7] + d[8]).to_i
    return false if num % 13 != 0
    num = (d[7] + d[8] + d[9]).to_i
    return false if num % 17 != 0

    true
  end
end

def substring_divisibility
  substring_divisible = []

  num = (0..9).to_a
  perms = num.permutation(10).to_a

  perms.each do |perm|
    perm = perm.join.to_i
    next if perm.to_s.length != 10
    substring_divisible << perm if perm.substring_divisible?
  end

  substring_divisible.inject(:+)
end

puts substring_divisibility
