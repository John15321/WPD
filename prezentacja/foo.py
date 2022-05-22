from functools import lru_cache
from re import A
import time

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


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
