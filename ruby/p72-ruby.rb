FACTORS = {}

def factors(num)
  return FACTORS[num] if FACTORS[num]
  factors = []

  (1..num).each do |i|
    factors << i if num % i == 0
  end

  FACTORS[num] = factors
  factors
end


def gcd(num, den)
  num & den
end


def counting_fractions(limit)
  reduced_proper_factors = []

  (1..limit).each do |denominator|
    denominator_factors = factors(denominator)

    (1...denominator).each do |numerator|
      numerator_factors = factors(numerator)
      gcd = gcd(numerator_factors, denominator_factors)
      reduced_proper_factors << numerator if gcd == [1]
    end
  end

  reduced_proper_factors.count
end


puts counting_fractions(10000)
