# Write a method that takes one argument, a positive integer, and returns a string 
# of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(int)
  number = ''
  int.times do |i|
    number += i.even? ? '1' : '0'
  end
  number
end

puts stringy 6
puts stringy 9
puts stringy 4
puts stringy 7

# LS Solution

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end