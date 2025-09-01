# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the 'String#slice!' documentation, and use that
# method to make the return value "Few things in life are
# as important as ". But leave the 'advice' variable as
# "house training your pet dinosaur.".

return_value = advice.slice!(0..38)
             # advice.slice!(0, 39)
             # advice.slice!(0, advice.index('house'))
puts return_value
puts advice
