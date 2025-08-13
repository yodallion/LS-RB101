# Write a method that takes a non-empty string argument, and returns the middle character 
# or characters of the argument. If the argument has an odd length, you should return exactly one character. 
# If the argument has an even length, you should return exactly two characters.

def center_of(str)
  if str.length.odd?
    str[str.length / 2]
  else
    str[(str.length / 2) - 1, 2]
  end
end

puts center_of('I love Ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
