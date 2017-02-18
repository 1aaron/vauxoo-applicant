"""
Module for practice on python for vauxoo to test me, I want to be an intern :)
"""


class prime_class(object):
    """
    this class will help to determine which type of number are you evaluating
    """

    def is_prime(self, num_int):
        """
        here we are going to evaluate if num_int is a prime number (only divisible by itself or 1)
        """
        # your primes code here
	divisible = False
	for i in range(2,num_int-1):
		if num_int % i == 0:
			divisible = True
	if divisible == True:
		return False
	else:
		return True
		
