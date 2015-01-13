-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Data.List

div_by_up_to_20 n = all (\x -> n `mod` x == 0) [1..20]

smallest_multiple = find (\x -> div_by_up_to_20 x == True) [2520..]
