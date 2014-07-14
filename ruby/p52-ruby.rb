def permuted_multiples
  ans = nil

  (10..1_000_000).each do |num|
    digits = num.to_s.split(//)
    multiples = [num * 2, num * 3, num * 4, num * 5, num * 6]
    pm = true

    multiples.each do |t|
      ts = t.to_s
      digits.each do |d|
        pm = false unless ts.length == digits.length && ts.include?(d)
      end
    end

    ans = num if pm == true
    break if !!ans
  end

  ans
end

puts permuted_multiples
