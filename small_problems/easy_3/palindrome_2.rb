def palindrome?(sequence)
  sequence == sequence.reverse
end


def real_palindrome?(sequence)
  palindrome?(sequence.downcase.gsub(/[^a-z0-9]/, ''))
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true
puts real_palindrome?("Madam, I'm Adam") == true
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
