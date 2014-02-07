def pythag(target)
  i = 2
  while i < 400
    n = i + 1
    while n < 400
      result = (i ** 2) + (n ** 2)
      result_sqrt = Math.sqrt(result)
      return (result_sqrt * i * n) if result_sqrt + i + n == 1000
      n += 1
    end
    i += 1
  end
end

s = Time.now
10000.times { pythag(1000) }
puts Time.now - s
