# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

defmodule Problem5 do
  def smallest_mult do
    find_smallest_mult(2521)
  end

  defp find_smallest_mult(n) do
    cond do
      evenly_divisible(n, 2) -> n
      true -> find_smallest_mult(n + 1)
    end
  end

  defp evenly_divisible(n, 21) do
    true
  end

  defp evenly_divisible(n, div) do
    cond do
      is_evenly_divisible(n, div) ->
        evenly_divisible(n, div + 1)
      true ->
        false
    end
  end

  defp is_evenly_divisible(n, div) do
    rem(n, div) == 0
  end
end

IO.puts Problem5.smallest_mult
