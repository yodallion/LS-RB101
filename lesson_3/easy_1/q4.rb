# What do the following method calls do? Assume we reset
# numbers to the original array between method calls.

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)

# The 'delete_at' method will delete whatever element is
# found at the given index, whereas the 'delete' method will
# delete the first element that matches it's given argument.
# As such, 'numbers.delete_at(1)' will delete the second
# element of the array and 'numbers_delete(1)' will delete
# the first element that contains the value '1', in this case
# the arrays first element. Both methods are destructive
# despite not ending with '!'.
