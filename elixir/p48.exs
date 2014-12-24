# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
#
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

defmodule Problem48 do
  def solve(n) do
    pows = self_powers(n, [])
    full_num = Enum.reduce(pows, fn(a, b) -> a + b end)

    last_ten(full_num)
  end

  defp self_powers(_, nums) when length(nums) == 1_000 do
    nums
  end

  defp self_powers(n, nums) do
    p = IntMath.pow(n, n) 
    nums = [p | nums]

    self_powers(n - 1, nums)
  end

  defp last_ten(n) do
    rem n, 10_000_000_000
  end
end

# https://gist.github.com/alco/6399677
defmodule IntMath do
  def pow(_, 0), do: 1
  def pow(n, 1), do: n

  def pow(n, p) when rem(p, 2) == 0 do
    t = pow(n, div(p, 2))
    t * t
  end

  def pow(n, p) do
    n * pow(n, p - 1)
  end
end

IO.puts Problem48.solve(1_000)
