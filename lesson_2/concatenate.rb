several_words = ['bird', 'dog', 'fish', 'capybara', 'smaller fish', 'Elz-Mulder, Destroyer of Worlds']

def concatenate(str_array)
  long_string = ''
  str_array.each { |word| long_string += word }
  long_string
end

puts concatenate several_words
