# Is there any difference between these two implementations
# of a rolling buffer aside from the different operators
# used for concatenating an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The '<<' operator mutates the array it's called on,
# therefore 'rolling_buffer1's implemention would be better
# for a method that's meant to alter the array it's called on,
# whereas rolling_buffer2's method of reassignment makes it
# more suitable for a method that is meant to return a new
# array without changing the array it's called on.
