# Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

puts munsters_description.swapcase == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.capitalize == "The munsters are creepy in a good way."
puts munsters_description.downcase == "the munsters are creepy in a good way."
puts munsters_description.upcase == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
