function fibs()
  local fibs = [1, 1]

  val = 0
  while val < 4000000
    local next = fibs[end] + fibs[end - 1]
    val = next
    push!(fibs, next)
  end

  fibs
end

function even_fibs(fibs)
  tmp = [mod(i, 2) == 0 ? i : 0 for i=fibs]
end

t1 = time()
for i = 1:10000
  tmp = fibs()
  tmp2 = even_fibs(tmp) 
  sum(tmp2)
end
t2 = time()
println("elapsed time: ", t2 - t1, " seconds")


function sum_of_even_fibs()
  sum = 0
  fibs = [1, 1]

  val = 0
  while val < 4000000
    local next = fibs[end] + fibs[end - 1]
    val = next
    push!(fibs, next)
    if mod(fibs[end], 2) == 0
      sum += fibs[end]
    end
  end

  sum
end

t1 = time()
for i = 1:10000
  sum_of_even_fibs()
end
t2 = time()
println("elapsed time: ", t2 - t1, " seconds")
