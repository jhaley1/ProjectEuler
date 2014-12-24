import math as m
import datetime as dt


def pick_numbers(sequence):
    player1 = []
    player2 = []
    turn = 1
    
    while len(sequence) > 0:
        num = sequence.pop()

        if is_even(turn):
            player2.append(num)
        else:
            player1.append(num)

        turn += 1

    return sum(player1)


def is_even(num):
    return num % 2 == 0


def generate_sequence(limit):
    sequence = [0]

    while len(sequence) < limit:
        next_num = (sequence[-1] ** 2 + 45) % 1000000007
        sequence.append(next_num)

    return sequence


def number_sequence_game():
    limit = 10 ** 4
    sequence = generate_sequence(limit)
    return pick_numbers(sequence)


print number_sequence_game()
