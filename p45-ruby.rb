def triangle(num)
  num(num + 1) / 2
end

def pentagonal?(num)
  x(3 * x - 1) / 2
end

def hexagonal?(num)
  x(2 * x - 1)
end

def tph
  start = 286
  while start
    test = triangle(start)
    return start if pentagonal?(test) && hexagonal?(test)
    start += 1
  end
end

puts tph
