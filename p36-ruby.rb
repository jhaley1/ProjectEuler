def double_base_palindromes
  sum = 0

  (1...1_000_000).each do |num|
    base2  = num.to_s(2)
    base10 = num.to_s(10)

    if base2 == base2.reverse && base10 == base10.reverse
      sum += num
    end
  end

  sum
end

puts double_base_palindromes


puts lambda { |limit|
  @sum = 0
  limit.times do |i|
    lambda { |i|
      base2  = i.to_s(2)
      base10 = i.to_s(10)
      if base10 == base10.reverse && base2 == base2.reverse
        @sum += i
      end
    }.call(i)
  end

  @sum
}.call(999_999)
