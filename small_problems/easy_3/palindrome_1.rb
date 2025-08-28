def palindrome?(sequence)
  palindromic = true
  string_half = ((sequence.length / 2) - 1)

  sequence.chars.each_with_index do |c, idx|
    palindromic = false if c != sequence[-(idx + 1)]
    break if !palindromic || idx >= string_half
  end
  palindromic
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true

# LS Solution ;_;
def palindrome?(string)
  string == string.reverse
end
