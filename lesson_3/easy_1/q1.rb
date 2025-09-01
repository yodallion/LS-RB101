# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# In ruby, the 'uniq' array method has two versions,
# a destructive and non-destructive version. Since the 'uniq'
# method call on line 4 is the non-destructive one the
# numbers variable will be unaffected. As such, line 6 will
# output each element of the [1, 2, 2, 3] array to the screen.
