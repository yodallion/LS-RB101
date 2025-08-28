print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  name = name.chomp('!').upcase
  puts "HELLO #{name}. NICE TO MEET YOU!"
else
  puts "Hello #{name}."
end
