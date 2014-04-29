import math as m
import datetime as dt

stored_primes = {}

def is_prime(num):
    upper_bound = int(m.sqrt(num)) + 1

    for i in range(2, upper_bound):
        if num in stored_primes:
            return True

        if num % i == 0:
            return False

    stored_primes[num] = True
    return True

def get_primes(limit):
    primes = []

    for i in range(2, limit):
        if is_prime(i):
            primes.append(i)

    return primes

def single_prime_sum(primes, limit):
    total = 0
    trail = 0
    longest_trail = 0
    largest_prime_sum = 0 

    for i in primes:
        total += i
        trail += 1

        if total > limit:
            return largest_prime_sum, longest_trail

        if total in stored_primes and trail > longest_trail:
            largest_prime_sum = total
            longest_trail = trail

    return largest_prime_sum, longest_trail

def largest_consecutive_prime_sum(primes, limit):
    largest_prime_sum, longest_trail = single_prime_sum(primes, limit)

    while len(primes) > 1:
        primes.pop(0)
        prime_sum, trail = single_prime_sum(primes, limit)
        if prime_sum > largest_prime_sum and trail > longest_trail:
            largest_prime_sum = prime_sum 
            longest_trail = trail

    return largest_prime_sum

def consecutive_prime_sum(limit):
    primes = get_primes(limit)
    return largest_consecutive_prime_sum(primes, limit)

s = dt.datetime.now()
print consecutive_prime_sum(1000000)
print dt.datetime.now() - s
