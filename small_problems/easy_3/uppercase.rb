def uppercase?(string)
  !string.match?(/[a-z]/)
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true

# LS Solution ;_;
def uppercase?(tring)
  string == string.upcase
end
