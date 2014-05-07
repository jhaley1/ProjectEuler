import math as m

stored_primes = {}
stored_prime_powers = {}

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

def power(base, exp):
    if (base, exp) in stored_prime_powers:
        return stored_prime_powers[(base,exp)]
    else:
        return m.pow(base, exp)

def sum_to_prime(prime, primes):
    exps = [2, 3, 4]

    exps2 = []
    exps3 = []
    exps4 = []

    for exp in exps:
        if exp == 2:
            exps[2].append(prime ** exp)
        elif exp == 3:
            exps[3].append(prime ** exp)
        else:
            exps[3].append(prime ** exp)

def power_triples(num):
    primes = get_primes(num)

    for prime in primes:
        return True if sum_to_prime(prime, primes)

    return False

def prime_power_triples(limit):
    count = []

    for num in range(28, limit):
        count.append(num) if power_triples(num)

print prime_power_triples(50)
