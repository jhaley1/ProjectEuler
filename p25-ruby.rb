def x_digit_fib_number(x)
  fibs = [1, 2]
  idx = 3
  length = 1

  until length === x
    num = fibs[-2] + fibs[-1]
    length = num.to_s.length
    fibs << num
    idx += 1
  end

  idx
end


puts x_digit_fib_number(1000)
