nine_numbers = [1, 2, 3, 2, 5, 2, 7, 2, 9]
ten_numbers = [0, 2, 0, 4, 0, 6, 0, 8, 0, 10]

def every_other(numbers)
  new_array = []
  counter = 0
  while counter <= numbers.size
    unless numbers[counter].nil?
      new_array << numbers[counter]
      counter += 2
    else
      break
    end
  end
  new_array
end

p every_other nine_numbers
p every_other ten_numbers
