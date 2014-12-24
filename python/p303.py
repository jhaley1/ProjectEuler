import math as m
import datetime as dt


def least_positive_multiple(num):
    i = 1

    while True:
        multiple = num * i
        if is_small_digits(multiple): return multiple 
        i += 1


def is_small_digits(num):
    str_to_num = {
        '0': 0,
        '1': 1,
        '2': 2,
        '3': 3,
        '4': 4,
        '5': 5,
        '6': 6,
        '7': 7,
        '8': 8,
        '9': 9
    }

    num_string = str(num)

    for char in num_string:
        if str_to_num[char] > 2: return False

    return True


def multiples_with_small_digits(limit):
    sum = 0

    for i in range(1, limit + 1):
        sum += least_positive_multiple(i) / i

    return sum


print multiples_with_small_digits(100)
