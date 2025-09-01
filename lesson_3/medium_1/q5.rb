# The following code is meant to define a method which
# implements a Fibonacci calculator, computing the sequence
# until some limit is reached. Right now, it raises an error.

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# What exactly is the issue and how can it be fixed?

# This is an issue of scope. The 'limit' variable cannot be
# accessed by the 'fib' method because it is outside the
# scope of the method's definition. This can be fixed by
# passing in 'limit' as one of the methods parameters.

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"
