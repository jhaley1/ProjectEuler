# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143?

defmodule Problem3 do
  def lpf(n) do
    primes = prime_factors(2, [2])
    [largest | _] = primes
    largest
  end

  defp prime_factors(n, primes) when n == 600851475143 do
    primes
  end

  defp prime_factors(n, primes) do
    n = n + 1
    
    cond do
      is_prime_factor(n) ->
        new_primes = [n | primes]
      true ->
        new_primes = primes
    end

    prime_factors(n, new_primes)
  end

  defp is_prime_factor(n) do
    max = 600851475143

    rem(max, n) == 0 && is_prime(n, 2)
  end

  defp is_prime(n, div) when div == n do
    true 
  end

  defp is_prime(n, div) do
    cond do
      rem(n, div) == 0 ->
        false
      true ->
        div = div + 1
        is_prime(n, div)
    end
  end
end

max = 600851475143
IO.puts Problem3.lpf(max)
