function sum_of_squares()
  local sum = 0
  [sum += i ^ 2 for i = 1:100]
end

function square_of_sums()
  sum([1:100]) ^ 2
end

t1 = time()
for i = 1:10000
  total = square_of_sums() - sum_of_squares()
end
t2 = time()
println("elapsed time: ", t2 - t1, " seconds")
