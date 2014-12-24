# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

defmodule Problem6 do
  def diff(n) do
    square_of_sum(n, 0) - sum_of_squares(n, 0)
  end

  defp sum_of_squares(0, sum) do
    sum
  end

  defp sum_of_squares(n, sum) do
    sum = sum + (n * n)

    sum_of_squares(n - 1, sum)
  end

  defp square_of_sum(0, sum) do
    sum * sum
  end

  defp square_of_sum(n, sum) do
    sum = sum + n

    square_of_sum(n - 1, sum)
  end
end

IO.puts Problem6.diff(100)
