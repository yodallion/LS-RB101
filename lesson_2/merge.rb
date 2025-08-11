def merge(array1, array2)
  index = 0
  merged = []

  loop do
    merged << array1[index]
    merged << array2[index]
    index += 1
    break if array1[index].nil?
  end
  
  merged
end

p merge [1, 2, 3], [4, 5, 6]
