def cubic_permutations
  (41_063_625..50_000_000).each do |num|
    perms = num.to_s.split(//).permutation(num.to_s.length).to_a

    cubes = 0
    perms.each do |perm|
      perm = perm.join.to_i
      cubes += 1 if Math.cbrt(perm) == perm.floor
    end

    return num if cubes == 5
  end
end

puts cubic_permutations
