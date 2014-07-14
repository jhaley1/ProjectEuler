def digit_power_sum
  dps = []

  n = 10
  until n == 512
    sum = 0

    n.to_s.each_char do |c|
      sum += c.to_i
    end

    i = 1
    tmp = 0
    until tmp >= n
      tmp = sum ** i
      i += 1

      dps << n if n == tmp
      break if n == tmp
    end

    n += 1
  end

  dps
end

p digit_power_sum
