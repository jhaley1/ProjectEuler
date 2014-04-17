def find(str, char)
  (0...str.length).find_all { |i| str[i,1] == char }
end

def find_recurrence(num)
  num = num.to_s
  recur_count = 0

  num = num.split('.')[1]
  start = num[0]
  occurrences = find(num, start)
  return 0 if occurrences.length == 1
  next_occurrence, check_occurrence = occurrences[1], occurrences[2]
  return 0 unless check_occurrence
  part1 = num[0...next_occurrence]
  part2 = num[next_occurrence...check_occurrence]
  if part1 == part2
    recur_count = next_occurrence
  end

  recur_count
end

def get_remainder(num)
  fraction = 1.0 / num
  fraction = "%0.200f" % [1.0 / num]
  find_recurrence(fraction)
end

def reciprocal_cycles(limit)
  largest = 0
  longest_chain = 0

  (1...1000).each do |num|
    chain = get_remainder(num)
    if chain > longest_chain
      longest_chain = chain
      largest = num
    end
  end

  longest_chain
end

puts reciprocal_cycles(1000)
