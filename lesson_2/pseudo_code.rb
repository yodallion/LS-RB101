# My more literal adaptation of the pseudocode

numbers = [5, 8, 1, 28, 0, 2, 1, 28, 49, 2, 1, 19]

iterator = 1
saved_number = numbers[0]

while iterator < numbers.length
  current_number = numbers[iterator]
    if saved_number >= current_number
      iterator += 1
      next
    else
      saved_number = current_number
    end
  iterator += 1
end

puts saved_number

# LS version, more Ruby-esque

def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

puts find_greatest numbers
