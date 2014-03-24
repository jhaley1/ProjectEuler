function num_of_divisors(num)
  num_divisors = 0
  sqrt_num = sqrt(num)
  i = 1
  
  while i < sqrt_num
    if mod(num, i) == 0
      num_divisors += 2
    end

    i += 1
  end

  num_divisors
end

function tri_num_with_500_divisors()
  i = 1
  num = 0
  
  while num_of_divisors(num) < 500
    num += i
    i += 1
  end
  
  num
end

t1 = time()
tri_num_with_500_divisors()
t2 = time()
println("elapsed time: ", t2 - t1, " seconds")
