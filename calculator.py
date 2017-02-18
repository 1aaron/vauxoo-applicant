"""
A new module for numbers, i saw that you asked for a class named 
calculator_class so i cahnged the name here and 
in the all_unittest.py file
"""


class CalculatorClass(object):
    """
    the class calculator which will work with numbers
    """

    def sum(self, num_list):
        """
        the sum method that will sum a bunch of numbers 
        """
        # your sum code here
        suma = 0
        for number in num_list:
            suma += number
        return suma
