# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

defmodule Problem20 do
  def solve(n) do
    factorial = factorial(n, 1)

    sum_digits(factorial, 0)
  end

  def sum_digits(n, sum) when n < 10 do
    n + sum
  end

  def sum_digits(n, sum) do
    r = rem n, 10
    n = div n, 10
    sum = sum + r
    
    sum_digits(n, sum)
  end

  def factorial(1, total) do
    total
  end

  def factorial(n, total) do
    factorial(n - 1, n * total)
  end
end

IO.puts Problem20.solve(100)
