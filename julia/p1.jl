function mults()
  mults = [mod(i, 3) == 0 ? i : mod(i,5) == 0 ? i : 0 for i=1:999]
  sum(mults)
end

t1 = time()
i = 0
while i < 10000
  mults()
  i += 1
end
t2 = time()
println("elapsed time: ", t2 - t1, " seconds")


t1 = time()
i = 0
while i < 10000
  m = [mod(i, 3) == 0 ? i : mod(i,5)==0 ? i : 0 for i=1:999]
  sum(m)
  i += 1
end
t2 = time()
println("elapsed time: ", t2 - t1, " seconds")
