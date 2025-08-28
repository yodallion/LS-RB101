def multiply(x, y)
  x * y
end

def square(n)
  multiply(n, n)
end

puts square(5) == 25
puts square(-8) == 64
