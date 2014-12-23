# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

defmodule Test do
  def mults([], sum) do
    sum 
  end

  def mults(list, sum) do
    [item | rest] = list

    if mult_of_3_or_5(item) do
      new_sum = sum + item
    else
      new_sum = sum
    end

    mults(rest, new_sum)
  end

  defp mult_of_3_or_5(n) do
    cond do
      rem(n, 3) == 0 ->
        true
      rem(n, 5) == 0 ->
        true
      true ->
        false
    end
  end
end

list = Enum.to_list 1..1000 - 1

IO.puts Test.mults(list, 0)
