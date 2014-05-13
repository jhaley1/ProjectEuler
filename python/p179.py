import math as m
import datetime as dt

factors = { '2': 2 }

def number_of_factors(num):
    count = 0
    sqrt = int(m.sqrt(num))
    limit = sqrt + 1

    for i in range(1, limit):
        if num % i == 0: count += 2

    num_s = str(num)
    if sqrt * sqrt == num: count -= 1
    factors[num_s] = count
    return count

def consecutive_positive_divisors(limit):
    count = 0

    for i in range(3, limit):
        n1_count = factors.get(str(i - 1))
        n_count = number_of_factors(i)
        factors[str(i)] = n_count

        if n1_count == n_count:
            # print 'pair: %d and %d' % (i - 1, i)
            count += 1

    return count

print consecutive_positive_divisors(10 ** 7)
# print number_of_factors(14)
# print number_of_factors(15)
# print number_of_factors(28)

# s = dt.datetime.now()
# for i in range(1, 10 ** 6):
#     number_of_factors(i)
# print dt.datetime.now() - s
