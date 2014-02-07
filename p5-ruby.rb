# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_mult
  start = 2520
  while true
    start += 2
    evenly_divisible = false
    [20, 19, 18, 17, 15, 16, 13, 12, 11, 7].each do |i|
      if start % i == 0
        return start if i == 7
        evenly_divisible = true
      else
        break
      end
    end
  end
  start
end

puts smallest_mult
