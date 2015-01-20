-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
--
-- What is the 10 001st prime number?

isPrime p = foldl (\acc x -> acc * x `mod` p) 1 [2..(p - 2)] == 1
primes = filter (\x -> isPrime x) [2..]
solve = primes !! 10000
