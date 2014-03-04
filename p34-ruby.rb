def digit_factorials
  nums = []
  num = 3
  factorials = { "1" => 1, "2" => 2 }

  until num === 2_540_161
    sum = 0
    num.to_s.each_char do |i|
      fact = if factorials[i]
               factorials[i]
             else
               fact = get_fact(i.to_i)
               factorials[i] = fact
             end
      sum += fact
    end
    nums << num if sum === num

    num += 1
  end

  nums.inject(:+)
end

def get_fact(num)
  return 1 if num === 0
  (1..num).inject(:*)
end

puts digit_factorials
