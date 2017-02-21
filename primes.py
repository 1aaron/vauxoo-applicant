"""
Module for practice on python for vauxoo to test me, I want to be an intern :)
"""


class PrimeClass(object):
    """
    this class will help to determine which type of number are you evaluating
    """

    def is_prime(self, num_int):
        """
        here we are going to evaluate if num_int is a prime number
        (only divisible by itself or 1)
        """
        # your primes code here
        if num_int == 2 or num_int == 0:
            return True
        if num_int == 1:
            return False
        for number in range(2, num_int):
            if num_int % number == 0:
                return False
        return True
