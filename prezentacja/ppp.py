from functools import lru_cache
from re import A
import time

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


# Rekurencja bez cache'a
def fibonacci(input_value):
    if input_value == 1:
        return 1
    elif input_value == 2:
        return 1
    elif input_value > 2:
        return fibonacci(input_value - 1) + fibonacci(
            input_value - 2
        )


fib_cache = {}
# Memoizacja
def fibonacci_cache(input_value):
    if f"{input_value}" in fib_cache:
        return fib_cache[f"{input_value}"]
    elif input_value == 1:
        res = 1
        fib_cache[f"{input_value}"] = res
    elif input_value == 2:
        res = 1
        fib_cache[f"{input_value}"] = res
    elif input_value > 2:
        res = fibonacci_cache(
            input_value - 1
        ) + fibonacci_cache(input_value - 2)
        fib_cache[f"{input_value}"] = res
    return res


# Python cache
@lru_cache(maxsize=10000000)
def fibonacci_lru_cache(input_value):
    if input_value == 1:
        return 1
    elif input_value == 2:
        return 1
    elif input_value > 2:
        return fibonacci_lru_cache(
            input_value - 1
        ) + fibonacci_lru_cache(input_value - 2)


def foo_timer(fka, n):
    start = time.time()
    fka(n)
    return time.time() - start


n = 15

fib1 = [foo_timer(fibonacci, i) for i in range(1, n)]
fib2 = [foo_timer(fibonacci_cache, i) for i in range(1, n)]
fib3 = [
    foo_timer(fibonacci_lru_cache, i) for i in range(1, n)
]
nr = list(range(1, n))

plt.plot(nr, fib1, "-o", label="Native Fibonacci")
plt.plot(nr, fib2, "-o", label="Fibonacci memoization")
plt.plot(nr, fib3, "-o", label="Fibonacci @lru_cache")

plt.ylabel("[s]")
plt.xlabel("n")
plt.title("Fibonacci(n)")
plt.grid(True)
plt.legend()
plt.show()
