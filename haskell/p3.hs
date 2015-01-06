-- The prime factors of 13195 are 5, 7, 13 and 29.
--
-- What is the largest prime factor of the number 600851475143?

factors n = filter (\x -> n `mod` x == 0) [2..n]

isPrime p = foldl (\acc x -> acc * x `mod` p) 1 [2..(p - 2)] == 1

factorsOf = factors 600851475143

prime_factors = filter (\x -> isPrime x) factorsOf

solve = maximum prime_factors
