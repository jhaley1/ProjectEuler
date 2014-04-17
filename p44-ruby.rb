@pentagonal_numbers = {}

def pentagonal(num)
  return @pentagonal_numbers[num] if @pentagonal_numbers[num]
  t = num * (3 * num - 1) / 2
  @pentagonal_numbers[num] = t
  t
end

def pentagon_numbers
  i = 3

  while true
    pj = pentagonal(i)
    pk = pentagonal(i + 1)

    sum = pj = pk
    k = i + 2
    until pentagonal(k) > sum
      k += 1
    end

    i += 1
  end
end
