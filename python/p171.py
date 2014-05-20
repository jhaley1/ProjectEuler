import math as m

def is_square(num):
    sqrt = int(m.sqrt(num))
    if sqrt * sqrt == num: return True
    return False

def square_digit_sum(num):
    total = 0

    for c in str(num):
        total += int(c) ** 2

    return is_square(total)

def digit_squares(limit):
    total = 0

    for i in range(1, limit):
        if square_digit_sum(i): total += i

    return str(total)[-5:-1]

print digit_squares(10 ** 6)
