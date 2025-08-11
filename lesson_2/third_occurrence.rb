str = 'axbxcdxex'

def third_occurrence(string, character)
  counter = 0
  index = 0
  while index < string.length
    counter += 1 if string[index] == character
    return index if counter == 3

    index += 1
  end
  nil
end

p third_occurrence str, 'x'
