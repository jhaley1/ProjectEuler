def largest_exponential
  f = File.open("files/base_exp.txt").readlines
  max = 0
  l = 1
  i = 0

  f.each do |line|
    i += 1
    nums = line.split(",")
    val = nums[0].to_i ** nums[1].to_i
    l = i if val > max
    max = val if val > max
  end

  l
end

puts largest_exponential
