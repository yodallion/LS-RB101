# In the following method, which is intended to show all
# of the factors of the input number.

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# It will raise an error if the input is 0 or a negative
# number. How can we handle this kind of input so that the
# method doesn't raise an exception or loop infinitely
# without use the 'begin / end until' construct?

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Bonus 1: The purpose of 'number % divisor == 0' is to 
# determine whether the current divisor is a factor of
# 'number', the methods argument.

# Bonus 2: The purpose of writing 'factors' before the
# methods end is to explicitly return the 'factors' array
# instead of the return value of the 'begin / end' loop.
