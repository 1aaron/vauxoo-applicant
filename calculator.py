"""
A new module for numbers
"""


class CalculatorClass(object):
    """
    the class calculator which will work with numbers
    """

    def sum(self, num_list):
        """
        the sum method that will sum a bunch of numbers
        """
        suma = 0
        for number in num_list:
            suma += number
        return suma
