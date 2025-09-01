# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# Why is that and what are two possible ways to fix this?

# The 'String#+' method only concatenates string objects,
# so the 42 needs to be converted to a string, or we can
# use string interpolation which automatically converts.

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"
