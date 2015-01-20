-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--
-- Find the sum of all the primes below two million.

isPrime p = foldl (\acc x -> acc * x `mod` p) 1 [2..(p - 2)] == 1
primesBelow2M = filter (\x -> isPrime x && x < 2000000) [2..]
solve = sum primesBelow2M
