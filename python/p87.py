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

def sums_of_prime_powers(primes, limit):
    pows2 = [] 
    pows3 = [] 
    pows4 = [] 
    exps = [2, 3, 4]
    target = []
    ts = {}
    
    for prime in primes:
        for exp in exps:
            num = power(prime, exp)
            if num > limit:
                continue 
            if exp == 2:
                pows2.append(num)
            elif exp == 3:
                pows3.append(num)
            else:
                pows4.append(num)

    for pow1 in pows2:
        for pow2 in pows3:
            tmp1 = pow1 + pow2
            if tmp1 > limit:
                continue
            for pow3 in pows4:
                tmp2 = tmp1 + pow3
                if tmp2 > limit:
                    continue
                if not ts.get(str(tmp2)): 
                    ts[str(tmp2)] = True
                    target.append(tmp2)
    return target

def prime_power_triples(limit):
    count = []
    prime_limit = int(m.sqrt(limit))
    primes = get_primes(prime_limit)
    return len(sums_of_prime_powers(primes, limit))


print prime_power_triples(50000000)
