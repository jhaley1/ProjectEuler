# digits = [0,1,2,3,4,5,6,7,8,9]
# permutations = digits.permutation.to_a
# p permutations[999_999]

def permutations(nums)
  permutations = []
  movable = true

  permutations << nums.clone

  until movable == false
    k = nums.length - 2
    until nums[k] < nums[k + 1]
      k -= 1
      return permutations if k == nums.length - 1
    end

    l = k
    until nums[k] < nums[l]
      l += 1
    end

    tmp = nums[k]
    nums[k] = nums[l]
    nums[l] = tmp

    permutations << nums.clone
  end

  permutations
end

p permutations([0,1,2])
p permutations([1,2,3,4])








  #   k = k + 1
  #   unless k == nums.last
  #     l = k
  #     length = nums.length - 1
  #     until nums[k] < nums[l]
  #       l += 1
  #       break if l > length
  #     end

  #     break if l > length
  #     permutations << nums.clone
  #   end
